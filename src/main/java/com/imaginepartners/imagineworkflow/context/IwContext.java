package com.imaginepartners.imagineworkflow.context;

import com.imaginepartners.imagineworkflow.models.IwGroupDetails;
import com.imaginepartners.imagineworkflow.models.rh.OrgEntiteOrganisationnelle;
import com.imaginepartners.imagineworkflow.models.rh.RhCollaborateur;
import com.imaginepartners.imagineworkflow.services.ActivitiService;
import com.imaginepartners.imagineworkflow.services.BusinessService;
import com.imaginepartners.imagineworkflow.services.impl.UserService;
import com.imaginepartners.imagineworkflow.util.ConfigConstants;
import com.imaginepartners.imagineworkflow.util.FacesUtil;
import groovy.json.internal.Exceptions;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Transport;
import org.activiti.engine.ActivitiObjectNotFoundException;
import org.activiti.engine.delegate.DelegateExecution;
import org.activiti.engine.delegate.ExecutionListener;
import org.activiti.engine.delegate.JavaDelegate;
import org.activiti.engine.identity.Group;
import org.activiti.engine.identity.User;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.spring.SpringProcessEngineConfiguration;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.LogManager;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanNotOfRequiredTypeException;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.NoSuchBeanDefinitionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.annotation.Scope;
import org.springframework.expression.AccessException;
import org.springframework.expression.BeanResolver;
import org.springframework.expression.EvaluationContext;
import org.springframework.expression.spel.support.StandardEvaluationContext;
import org.springframework.stereotype.Component;

@Component("iwContext")
@Scope(ConfigurableBeanFactory.SCOPE_SINGLETON)
public class IwContext implements IwEl, InitializingBean, ApplicationContextAware, BeanResolver , ExecutionListener{
	private static final long serialVersionUID = 1L;

	private static ApplicationContext appContext;

	private static StandardEvaluationContext standardEvaluationContext= new StandardEvaluationContext();

	@Autowired
	private ActivitiService activitiService;

	@Autowired
	private BusinessService businessService;

	@Autowired
	private UserService userService;

	@Autowired
	SpringProcessEngineConfiguration processEngineConfiguration;

	/**
	 * Implementing ApplicationContextAware handler
	 * @param applicationContext the ApplicationContext Reference.
	 * @throws BeansException
	 */
	@Override
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		appContext = applicationContext;
	}

	/**
	 * Initializing bean variables.
	 * just like @PostContruct annotation. in JSF API
	 * setting the bean resolver for the standard evaluation context
	 * iwContext implement BeanResolver interface so we can use it to reference a bean resolver.
	 * @throws Exceptions
	 */
	@Override
	public void afterPropertiesSet() throws Exception {
		standardEvaluationContext.setBeanResolver(this);
	}

	/**
	 * Override the resolve method
	 * @param context providing the evaluation context by Spring IOC.
	 * @param beanName for configuring the caller @beanName dot methods or properties.
	 * @return
	 * @throws AccessException
	 */
	@Override
	public Object resolve(EvaluationContext context, String beanName) throws AccessException {
		if(beanName.toLowerCase().equals("iw") || beanName.toLowerCase().equals("iwContext")){
			try{
				return appContext.getBean("iwContext", this);
			}catch(NoSuchBeanDefinitionException nsbde){
				LogManager.getLogger(BeanResolver.class).error("can't find definition for given beanName", nsbde);
			}catch(BeanNotOfRequiredTypeException bnorte){
				LogManager.getLogger(BeanResolver.class).error("bean not of required type exception", bnorte);
			}catch(BeansException beanException){
				LogManager.getLogger(BeanResolver.class).error("beans exception", beanException);
			}
		}
		return null;

	}

	/**
	 *
	 * @return current standard evaluation context without any parameters.
	 */
	public static StandardEvaluationContext getStandardEvaluationContext() {
		return standardEvaluationContext;
	}

	/**
	 * Try to build standard evaluation context object with given task id.
	 * set all variables in the standard evaluation context.
	 * @param task provide a valid task in order to locate the taskVariables.
	 * @return build standard evaluation context object.
	 */
	public static StandardEvaluationContext getStandardEvaluationContext(String task) {
		/**
		 * In the next release the name of activitiServiceImpl will be more generic
		 * we can get the reference of it using java reflection.
		 */
		ActivitiService activitiService= (ActivitiService) appContext.getBean("activitiServiceImpl");
		standardEvaluationContext.setVariables(activitiService.getTaskVariables(task) );
		return standardEvaluationContext;
	}

	/**
	 * This will execute within another thread handled by activiti framework
	 * @param execution the delegate execution object
	 * @throws Exception
	 */
	@Override
	public void notify(DelegateExecution execution) throws Exception {
		ActivitiService activitiService= (ActivitiService) appContext.getBean("activitiServiceImpl");
		BusinessService businessService= (BusinessService) appContext.getBean("businessServiceImpl");
		if(activitiService != null){
			String initiator= activitiService.getVariableProcess(execution.getProcessInstanceId(), "initiator").toString();
			List<Group> listGroup= activitiService.getHierarchyList(businessService.getConfigValue(ConfigConstants.GROUP_ID_DEFAULT_PREFIX));
			String trueGroupID="";
			for(Group group: listGroup){
				User user= activitiService.getUser(initiator);
				if(activitiService.getMemerbs(group.getId()).contains(user)){
					trueGroupID= group.getId();
					break;
				}
			}
			if(StringUtils.isNotBlank(trueGroupID)){
				IwGroupDetails details= businessService.getGroupDetails(trueGroupID);
				if(details.getIwResponsible() != null)
					activitiService.addVariableforGivenInstance(execution.getProcessInstanceId(), "responsable", details.getIwResponsible());
			}
		}
	}

	public String getResponsable() {
		return businessService.getResponsibleForUser(userService.getLoggedInUser().getId());
	}

	public String getNomUtilisateur() {
		String userName = "";
		if (StringUtils.isNotBlank(userService.getLoggedInUser().getLastName())) {
			userName = userService.getLoggedInUser().getLastName();
		}
		if (StringUtils.isNotBlank(userService.getLoggedInUser().getFirstName())) {
			userName += " " + userService.getLoggedInUser().getFirstName();
		}
		if (StringUtils.isBlank(userName)) {
			userName = userService.getLoggedInUser().getId();
		} else {

		}
		return userName;
	}

	public String getIdUtilisateur() {
		return userService.getLoggedInUser().getId();
	}

	public String getInitiator(){
		String taskId= FacesUtil.getUrlParam("task");
		Map<String, Object> varsByTask= activitiService.getTaskVariables(taskId);
		return varsByTask.get("initiator").toString();
	}

	public String getCollaborateur(){
		String taskId= FacesUtil.getUrlParam("task");
		Map<String, Object> varsByTask= activitiService.getTaskVariables(taskId);
		return varsByTask.get("collaborateur").toString();
	}

	public String getSup01(){
		String taskId= FacesUtil.getUrlParam("task");
		Map<String, Object> varsByTask= activitiService.getTaskVariables(taskId);
		return varsByTask.get("superieur_n1").toString();
	}

	public String getSup02(){
		String taskId= FacesUtil.getUrlParam("task");
		Map<String, Object> varsByTask= activitiService.getTaskVariables(taskId);
		return varsByTask.get("superieur_n2").toString();
	}

	public String getCollaborateur(String collaborateurRef){
		String taskId= FacesUtil.getUrlParam("task");
		Map<String, Object> varsByTask= activitiService.getTaskVariables(taskId);
		return varsByTask.get(collaborateurRef).toString();
	}

	public String getEmailUtilisateur() {
		return userService.getLoggedInUser().getEmail();
	}

	public JavaDelegate convertToArray(final String tab, final String list) {
		class ArrayConverter implements JavaDelegate {
			@Override
			public void execute(DelegateExecution de) throws Exception {
				String[] tableau = (String[]) de.getVariable(tab);
				de.setVariable(list, Arrays.asList(tableau));
			}
		}
		return new ArrayConverter();
	}

	public JavaDelegate setCurrentUserInVar(final String varName) {
		class CurrentUserInVar implements JavaDelegate {
			@Override
			public void execute(DelegateExecution de) throws Exception {
				LogManager.getLogger(IwContext.class).debug("DelegateExecution SuperExecutionId:" + de.getSuperExecutionId());
				de.setVariable(varName, userService.getLoggedInUser().getId());
			}
		}
		return new CurrentUserInVar();
	}

	public JavaDelegate checkMailServer(final String isMailServerOk) {
		class MailChecker implements JavaDelegate {
			@Override
			public void execute(DelegateExecution de) {
				Boolean isOk = true;
				Properties props = new Properties();
				props.put("mail.smtp.auth", "true");
				props.put("mail.debug", "true");
				props.put("mail.smtp.starttls.enable", Boolean.valueOf(businessService.getConfigValue("smtp_mail_server_use_tls")) );
				props.put("mail.smtp.startssl.enable",Boolean.valueOf(businessService.getConfigValue("smtp_mail_server_use_ssl")));
				Session session = Session.getInstance(props);
				Transport transport;
				try {
					transport = session.getTransport("smtp");
					transport.connect(businessService.getConfigValue("smtp_mail_server_host"),
					Integer.valueOf(businessService.getConfigValue("smtp_mail_server_host")) ,
					businessService.getConfigValue("smtp_mail_server_username"),
					businessService.getConfigValue("smtp_mail_server_password"));
					transport.close();
				} catch (NoSuchProviderException ex) {
					isOk = false;
					LogManager.getLogger(IwContext.class).error(null, ex);
				} catch (MessagingException ex) {
					isOk = false;
					LogManager.getLogger(IwContext.class).error(null, ex);
				}
				de.setVariable(isMailServerOk, isOk);
			}
		}
		return new MailChecker();
	}

	/**
	 * A method to get all users emails
	 * @param userIdTabName
	 * @param usersEmailsListName
	 * @return
	 */
	public JavaDelegate getUsersMails(final String userIdTabName, final String usersEmailsListName) {
		class UsersMails implements JavaDelegate {
			@Override
			public void execute(DelegateExecution de) throws Exception {
				String[] userIdTab = (String[]) de.getVariable(userIdTabName);
				List<String> mails = new ArrayList<String>();
				for (String usrId : userIdTab) {
					User usr 					= activitiService.getUser(usrId)	;
					if (StringUtils.isNotBlank(usr.getEmail())) {
						mails.add(usr.getEmail());
					}
				}
				de.setVariable(usersEmailsListName, mails);
			}
		}
		return new UsersMails();
	}

	public JavaDelegate getUserMail(final String userId, final String usersEmailName) {
		class UserMail implements JavaDelegate {
			@Override
			public void execute(DelegateExecution de) throws Exception {
				User usr = activitiService.getUser(userId);
				if (usr != null) {
					de.setVariable(usersEmailName, usr.getEmail());
				}
			}
		}
		return new UserMail();
	}

	/**
	 * Launch new process instance for given process definition key.
	 * @param processDefKey ProcessDefinition key value.
	 * @return JavaDelegate instance.
	 */
	public JavaDelegate launchProcess(final String processDefKey) {
		class ProcessLauncher implements JavaDelegate {
			@Override
			public void execute(DelegateExecution de) throws Exception {
				activitiService.startProcessInstanceByKey(processDefKey, (Map<String, Object>) de.getVariables());
			}
		}
		return new ProcessLauncher();
	}

	/**
	 * Launch processes by process definition key. for eatch node in the tree.
	 * in order to understand the behavior of the tree you can go to: groupes/hairarchy.xhtml
	 * @return JavaDelegate Instance.
	 */
	public JavaDelegate launchEvaluationProcess(String processDefinitionkey) throws ActivitiObjectNotFoundException{
		ProcessDefinition procDef= null;
		if(StringUtils.isBlank(processDefinitionkey) ) {
			FacesUtil.setSessionErrorMessage("activiti cant locate process defintion with an empty key, you must send a valide key."+processDefinitionkey);
			throw new ActivitiObjectNotFoundException("activiti cant locate process defintion with an empty key, you must send a valide key", IwContext.class);
		} else {
			procDef= activitiService.getProcessDefinitionByKey(processDefinitionkey);
		}
		class EvaluationProcess implements JavaDelegate {
			private String processDefinitionkey="";
			private Date d1, d2;
			private String id1="", id2="";
			public EvaluationProcess(String processDefinitionkey) {
				this.processDefinitionkey= processDefinitionkey;
			}
			@Override
			public void execute(DelegateExecution de) throws Exception {
				Map<String, Object> map= de.getVariables();
				for(Map.Entry<String, Object> entry: map.entrySet()){
					if(entry.getValue() instanceof Date){
						if(entry.getKey().toLowerCase().contains("debut")){
							id1= entry.getKey();
							d1= (Date) entry.getValue();
						}
						if(entry.getKey().toLowerCase().contains("fin")){
							id2= entry.getKey();
							d2= (Date) entry.getValue();
						}
					}
				}
				for (RhCollaborateur collaborateur : businessService.getRhCollaborateurList()) {
					Map<String, Object> varMap = new HashMap<String, Object>(de.getVariables());
					/**
					 * Starting with simple nodes
					 * the logic here is simple, evry colla with orgEntite != null must be evaluated,
					 */
					if(!isResponsable(collaborateur)){
						varMap.put(id1, d1);
						varMap.put(id2, d2);
						varMap.put("collaborateur", collaborateur.getActIdUser());
						OrgEntiteOrganisationnelle n1EntiteOrg = collaborateur.getIdEntiteOrganisationnelle();
						RhCollaborateur n1 = businessService.getRhCollaborateurByCode(n1EntiteOrg.getIdResponsable());
						// In this stage we are sure that we have one sup at least. we are not obligated to use if operator.
						if (n1 != null) {
							varMap.put("superieur_n1", n1.getActIdUser());
							OrgEntiteOrganisationnelle n2EntiteOrg = n1.getIdEntiteOrganisationnelle();
							RhCollaborateur n2 = businessService.getRhCollaborateurByCode(n2EntiteOrg.getIdResponsable());
							if (n2 != null) {
								varMap.put("superieur_n2", n2.getActIdUser());
							} else {
								varMap.put("superieur_n2", n1.getActIdUser());
							}
							activitiService.startProcessInstanceByKey(this.processDefinitionkey, varMap);
						}

					} else {
						// Now we must created processes for the rest of colla, these colla are responsables in orgEntite
						List<OrgEntiteOrganisationnelle> childs= businessService.getChildsOfGivenEntiteOrg(collaborateur.getIdEntiteOrganisationnelle());
						for(OrgEntiteOrganisationnelle child: childs){
							varMap.put(id1, d1);
							varMap.put(id2, d2);
							String colla= businessService.getRhCollaborateurByCode(child.getIdResponsable()).getActIdUser();
							String niveau1= businessService.getRhCollaborateurByCode(child.getIdEntiteOrgaSuiv().getIdResponsable()).getActIdUser();
							if(colla != null){
								varMap.put("collaborateur", colla);
							}
							if(niveau1 != null)
								varMap.put("superieur_n1", niveau1);
							// Rest to verifie if there is a top parrent.
							activitiService.startProcessInstanceByKey(this.processDefinitionkey, varMap);
						}
					}
				}
			}
			public void setProcessDefinitionkey(String processDefinitionkey) {
				this.processDefinitionkey = processDefinitionkey;
			}
		}
		if(procDef != null)
			return new EvaluationProcess(procDef.getKey());
		return null;
	}

	/**
	 *
	 * @param colla is this colla is a responsible.
	 * @return true if the given collaborateur is a responsible.
	 */
	private boolean isResponsable(RhCollaborateur colla){
		List<OrgEntiteOrganisationnelle> listOrg= businessService.getOrgEntiteOrganisationnelleList();
		for(OrgEntiteOrganisationnelle org: listOrg){
			if(org.getIdResponsable() != null && org.getIdResponsable().equals(colla.getId()) )
				return true;

		}
		return false;
	}

	/**
	 * In order to evaluate the overlap value between two process instances,
	 * date values solves the issue.
	 * precondition: processKey and taskID.
	 * @param processDef the process definition object
	 * @return boolean type indicating if the provided process will be overlapped
	 * with the same launched process definition instances before.
	 */
	private boolean isProcessInstancesOverlap(ProcessDefinition processDef){
		return true;
	}

	/**
	 *
	 * @param methodName invoke given method by it's name.
	 * @param paramTypes set all types as parameters for the given methodName.
	 * @return compiled method value.
	 */
	@Override
	public String get(String methodName, Class[] paramTypes) {
		try {
			return this.getClass().getDeclaredMethod(methodName, paramTypes).invoke(this, paramTypes).toString();
		} catch (NoSuchMethodException ex) {
			LogManager.getLogger(IwContext.class).error("no such method exception ", ex);
		} catch (SecurityException ex) {
			LogManager.getLogger(IwContext.class).error("security exception", ex);
		} catch(IllegalAccessException iae){
			LogManager.getLogger(IwContext.class).error("Illegal Access Exception ", iae);
		} catch (IllegalArgumentException iae){
			LogManager.getLogger(IwContext.class).error("Illegal Argument Exception ", iae);
		} catch(InvocationTargetException ite){
			LogManager.getLogger(IwContext.class).error("invocation target exception ", ite);
		}
		return "";
	}
}
