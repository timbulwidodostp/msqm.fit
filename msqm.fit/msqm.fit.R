# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Marginal Structual Quantile Model (MSQM) Use msqm.fit (MSQM) With (In) R Software
install.packages("remotes")
remotes::install_github("chaochengstat/MSQM")
library("msqm")
# Estimate Marginal Structual Quantile Model (MSQM) Use msqm.fit (MSQM) With (In) R Software
msqm.fit = read.csv("https://raw.githubusercontent.com/timbulwidodostp/msqm.fit/main/msqm.fit/msqm.fit.csv",sep = ";")
MSQM.formula = as.formula(Y ~ A1 + A2 + A3)
q=0.5
A.names = c("A1","A2","A3")
Outcome.name = "Y"
PS.formula = list(as.formula(A1 ~ X11 + X12), as.formula(A2 ~ A1 + X21 + X22), as.formula(A3 ~ A2 + X31 + X32))
S.formula = list(as.formula(A1 ~ 1), as.formula(A2 ~ A1), as.formula(A3 ~ A2))
Outcome.formula=list(as.formula(Y ~ A1 + A2 + A3 + X11 + X12), as.formula(Y ~ A1 + A2 + A3 + X11 + X12 + X21 + X22),
as.formula(Y ~ A1 + A2 + A3 + X11 + X12 + X21 + X22 + X31 + X32))
Var.formula =list(as.formula(~ A1 + A2 + A3), as.formula(~ A1 + A2 + A3), as.formula(~ A1 + A2 + A3))
msqm.fit = msqm.fit(msqm.fit, q, PS.formula, S.formula, Outcome.formula, Var.formula, MSQM.formula, A.names, Outcome.name)
msqm.fit$MSQM_coef
msqm.fit$MSQM_vcov
# Marginal Structual Quantile Model (MSQM) Use msqm.fit (MSQM) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished