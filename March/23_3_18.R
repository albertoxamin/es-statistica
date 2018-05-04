source("statistica.R")

#Dati
prevalenza <- 0.00008
sensibilita <- 0.931
falsi_positivi <- 0.0007
m_con_hiv <- 0.984
m_senza_hiv <- 0.478

#Svolgimento
hiv <- prevalenza * sensibilita
fake_hiv <- compl(prevalenza) * falsi_positivi

test_positivo <- hiv + fake_hiv
print_res("P(Test Positivo)", test_positivo)

hiv_con_test_positivo <- hiv / test_positivo
print_res("P(hiv|Test Postivo)", hiv_con_test_positivo)

hiv_con_maschio <- bayes(hiv * m_con_hiv, m_senza_hiv * fake_hiv)
print_res("P(hiv|TestPos ^ Maschio)", hiv_con_maschio)

hiv_con_femmina <- bayes(compl(m_con_hiv) * hiv, compl(m_senza_hiv) * fake_hiv)
print_res("P(hiv|TestPos ^ Femmina)", hiv_con_femmina)