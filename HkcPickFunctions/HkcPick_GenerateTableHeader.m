function HkcPickTableAll = HkcPick_GenerateTableHeader()
% Generate Table Header for HkcPick
varname1_Hkc_info={'sta_idx','stnm'  ,'lon'   ,'lat'   ,'run_idx','datasource','refH'  ,'refkappa'  };
vartype1_Hkc_info={'double' ,'string','double','double','double' ,'double'    ,'double','double'};

varname2_Hkc_result={'tPs','PsA1','PsTheta1','PsA2','PsTheta2','tM1','M1A1','M1Theta1','M1A2',...
    'M1Theta2','tM2','M2A1','M2Theta1','M2A2','M2Theta2','Hbefore','kappabefore','Hafter','kappaafter'};
vartype2_Hkc_result=repmat({'double'},1,length(varname2_Hkc_result));

varname3_Hkc_stability_raw={'tPs_stdraw', ...
    'PsA1_stdraw','PsTheta1_stdraw','PsTheta1_rhostdraw','PsTheta1_sigmastdraw', ...
    'PsA2_stdraw','PsTheta2_stdraw','PsTheta2_rhostdraw','PsTheta2_sigmastdraw',...
    'tM1_stdraw', ...
    'M1A1_stdraw','M1Theta1_stdraw','M1Theta1_rhostdraw','M1Theta1_sigmastdraw',...
    'M1A2_stdraw','M1Theta2_stdraw','M1Theta2_rhostdraw','M1Theta2_sigmastdraw',...
    'tM2_stdraw',...
    'M2A1_stdraw','M2Theta1_stdraw','M2Theta1_rhostdraw','M2Theta1_sigmastdraw',...
    'M2A2_stdraw','M2Theta2_stdraw','M2Theta2_rhostdraw','M2Theta2_sigmastdraw',...
    'H_stdraw','kappa_stdraw','Hbefore_check','kappabefore_check'};
vartype3_Hkc_stability_raw=repmat({'double'},1,length(varname3_Hkc_stability_raw));

varname4_Hkc_stability_norm={'tPs_stdnorm', ...
    'PsA1_stdnorm','PsTheta1_stdnorm','PsTheta1_rhostdnorm','PsTheta1_sigmastdnorm', ...
    'PsA2_stdnorm','PsTheta2_stdnorm','PsTheta2_rhostdnorm','PsTheta2_sigmastdnorm',...
    'tM1_stdnorm', ...
    'M1A1_stdnorm','M1Theta1_stdnorm','M1Theta1_rhostdnorm','M1Theta1_sigmastdnorm',...
    'M1A2_stdnorm','M1Theta2_stdnorm','M1Theta2_rhostdnorm','M1Theta2_sigmastdnorm',...
    'tM2_stdnorm',...
    'M2A1_stdnorm','M2Theta1_stdnorm','M2Theta1_rhostdnorm','M2Theta1_sigmastdnorm',...
    'M2A2_stdnorm','M2Theta2_stdnorm','M2Theta2_rhostdnorm','M2Theta2_sigmastdnorm',...
    'H_stdnorm','kappa_stdnorm'};
vartype4_Hkc_stability_norm=repmat({'double'},1,length(varname4_Hkc_stability_norm));

varname5_Hkc_quality_manual={'BAZ_coverage','Ps_clarity','M1_clarity','M2_clarity',...
    'Ps_Arange','M1_Arange','M2_Arange','H_clustering','kappa_clustering'};
vartype5_Hkc_quality_manual=repmat({'double'},1,length(varname5_Hkc_quality_manual));

varname6_Hkc_apriori={'tPs_hk','tM1_hk','tM2_hk','dtPs_hkc','dtM1_hkc','dtM2_hkc',...
    'M1Psratio_c','M1Psratio_hk','dM1Psratio_hkc','PsM1M2_c','PsM1M2_hk','dPsM1M2_hkc',...
    'dH_hkc','dkappa_hkc','dH_clustering_auto','dkappa_clustering_auto'};
vartype6_Hkc_apriori=repmat({'double'},1,length(varname6_Hkc_apriori));

varname7_Hkc_manualmark={'Hkcquality','rerun','demo','isnote','note'};
vartype7_Hkc_manualmark={'double','double','double','double','string'};

VarName=[varname1_Hkc_info,varname2_Hkc_result,varname3_Hkc_stability_raw,varname4_Hkc_stability_norm,...
    varname5_Hkc_quality_manual,varname6_Hkc_apriori,varname7_Hkc_manualmark];
VarType=[vartype1_Hkc_info,vartype2_Hkc_result,vartype3_Hkc_stability_raw,vartype4_Hkc_stability_norm,...
    vartype5_Hkc_quality_manual,vartype6_Hkc_apriori,vartype7_Hkc_manualmark];

sz=[0 length(VarName)];
HkcPickTableAll = table('Size',sz,'VariableTypes',VarType,'VariableNames',VarName);
end

