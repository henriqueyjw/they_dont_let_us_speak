clear
import excel "D:\Diego\dados_novo\base_final.xlsx", sheet("Sheet3") firstrow
set matsize 11000

encode ministrx_interrompido , generate(ministrx_interrompido_bin)
encode papel_interrompido , generate(papel_interrompido_bin)
encode genero_min_interrompido , generate(genero_min_interrompido_bin)
encode orgao, generate(orgao_bin)
encode atuacao , generate(atuacao_bin)
encode tipo_interrupcao , generate(tipo_interrupcao_bin)
encode estilo_interrupcao , generate(estilo_interrupcao_bin)
encode motivo_interrupcao , generate(motivo_interrupcao_bin)
encode situacao , generate(situacao_bin)
encode ministrx_interrompeu , generate(ministrx_interrompeu_bin)
encode genero_min_interrompeu , generate(genero_min_interrompeu_bin)
encode ministrx_interrompeu_votando , generate(ministrx_interrompeu_votando_bin)
encode papel_ministrx_interrompeu, generate(papel_ministrx_interrompeu_bin)

reg interrompidx paginas_votos linhas_faladas i.ano i.orgao_bin i.atuacao_bin i.papel_interrompido_bin i.genero_min_interrompido_bin aurelio barbosa barroso britto fachin fux gracie grau lewandowski lucia mello mendes moraes peluso pertence toffoli weber zavascki,rob
logit interrompidx paginas_votos linhas_faladas i.ano i.orgao_bin i.atuacao_bin i.papel_interrompido_bin i.genero_min_interrompido_bin aurelio barbosa barroso britto fachin fux gracie grau lewandowski lucia mello mendes  peluso pertence toffoli weber zavascki,rob
margins, dydx(paginas_votos linhas_faladas i.orgao_bin i.atuacao_bin i.papel_interrompido_bin i.genero_min_interrompido_bin) post
outreg2 using "D:\Diego\paper_sorority_personal_effect_logit.xls", replace ctitle(Logit Model 5) keep(linhas_faladas gen_int_bin carmen_lucia) label addtext(Year FE, YES, Forum FE, NO)


logit interrompidx paginas_votos linhas_faladas i.ano i.orgao_bin i.atuacao_bin i.papel_interrompido_bin i.ministrx_interrompido_bin,rob
margins, dydx(paginas_votos linhas_faladas i.ano i.orgao_bin i.atuacao_bin i.papel_interrompido_bin i.ministrx_interrompido_bin) post
outreg2 using "D:\Diego\results_logit.xls", replace ctitle(Logit 1) keep(paginas_votos linhas_faladas i.ano i.orgao_bin i.atuacao_bin i.papel_interrompido_bin i.ministrx_interrompido_bin) label addtext(Year FE, YES, Forum FE, NO)

logit interrompidx paginas_votos linhas_faladas i.orgao_bin i.atuacao_bin i.papel_interrompido_bin i.genero_min_interrompido_bin marco_aurelio barbosa barroso britto fachin fux grau lewandowski mello mendes peluso pertence toffoli zavascki lucia weber,rob
margins, dydx(paginas_votos linhas_faladas i.orgao_bin i.atuacao_bin i.papel_interrompido_bin i.genero_min_interrompido_bin marco_aurelio barbosa barroso britto fachin fux grau lewandowski mello mendes peluso pertence toffoli zavascki lucia weber) post
outreg2 using "D:\Diego\results_logit.xls", replace ctitle(Logit 2) keep(paginas_votos linhas_faladas i.orgao_bin i.atuacao_bin i.papel_interrompido_bin i.genero_min_interrompido_bin lucia weber) label addtext(Year FE, NO, Forum FE, YES, Majority FE, YES, Role FE, YES, Judge FE, YES)

logit interrompidx paginas_votos linhas_faladas i.ano i.atuacao_bin i.papel_interrompido_bin i.genero_min_interrompido_bin marco_aurelio barbosa barroso britto fachin fux grau lewandowski mello mendes peluso pertence toffoli zavascki lucia weber,rob
margins, dydx(paginas_votos linhas_faladas i.ano i.atuacao_bin i.papel_interrompido_bin i.genero_min_interrompido_bin marco_aurelio barbosa barroso britto fachin fux grau lewandowski mello mendes peluso pertence toffoli zavascki lucia weber) post
outreg2 using "D:\Diego\results_logit.xls", append ctitle(Logit 2) keep(paginas_votos linhas_faladas i.atuacao_bin i.papel_interrompido_bin i.genero_min_interrompido_bin lucia weber) label addtext(Year FE, YES, Forum FE, NO, Majority FE, YES, Role FE, YES, Judge FE, YES)

logit interrompidx paginas_votos linhas_faladas i.ano i.orgao_bin i.papel_interrompido_bin i.genero_min_interrompido_bin marco_aurelio barbosa barroso britto fachin fux grau lewandowski mello mendes peluso pertence toffoli zavascki lucia weber,rob
margins, dydx(paginas_votos linhas_faladas i.ano i.orgao_bin i.papel_interrompido_bin i.genero_min_interrompido_bin marco_aurelio barbosa barroso britto fachin fux grau lewandowski mello mendes peluso pertence toffoli zavascki lucia weber) post
outreg2 using "D:\Diego\results_logit.xls", append ctitle(Logit 2) keep(paginas_votos linhas_faladas i.orgao_bin i.papel_interrompido_bin i.genero_min_interrompido_bin lucia weber) label addtext(Year FE, YES, Forum FE, YES, Majority FE, NO, Role FE, YES, Judge FE, YES)

logit interrompidx paginas_votos linhas_faladas i.ano i.orgao_bin i.atuacao_bin i.genero_min_interrompido_bin marco_aurelio barbosa barroso britto fachin fux grau lewandowski mello mendes peluso pertence toffoli zavascki lucia weber,rob
margins, dydx(paginas_votos linhas_faladas i.ano i.orgao_bin i.atuacao_bin i.genero_min_interrompido_bin marco_aurelio barbosa barroso britto fachin fux grau lewandowski mello mendes peluso pertence toffoli zavascki lucia weber) post
outreg2 using "D:\Diego\results_logit.xls", append ctitle(Logit 2) keep(paginas_votos linhas_faladas i.orgao_bin i.atuacao_bin i.genero_min_interrompido_bin lucia weber) label addtext(Year FE, YES, Forum FE, YES, Majority FE, YES, Role FE, NO, Judge FE, YES)

logit interrompidx paginas_votos linhas_faladas i.ano i.orgao_bin i.atuacao_bin i.papel_interrompido_bin i.genero_min_interrompido_bin marco_aurelio barbosa barroso britto fachin fux grau lewandowski mello mendes peluso pertence toffoli zavascki lucia weber,rob
margins, dydx(paginas_votos linhas_faladas i.ano i.orgao_bin i.atuacao_bin i.papel_interrompido_bin i.genero_min_interrompido_bin marco_aurelio barbosa barroso britto fachin fux grau lewandowski mello mendes peluso pertence toffoli zavascki lucia weber) post
outreg2 using "D:\Diego\results_logit.xls", append ctitle(Logit 2) keep(paginas_votos linhas_faladas i.orgao_bin i.atuacao_bin i.papel_interrompido_bin i.genero_min_interrompido_bin lucia weber) label addtext(Year FE, YES, Forum FE, YES, Majority FE, YES, Role FE, YES, Judge FE, YES)
