
@echo off

set CMD_LINE_ARGS=%*
set MOD_CMD_LINE_ARGS=
setlocal enabledelayedexpansion
for %%g in (%CMD_LINE_ARGS%) do (
	set a=%%g
	set a=!a:клонировать=clone!
	set a=!a:помощь=help!
	set a=!a:инициировать=init!
	set a=!a:добавить=add!
	set a=!a:статус=status!
	set a=!a:разница=diff!
	set a=!a:зафиксировать=commit!
	set a=!a:сбросить=reset!
	set a=!a:удалить=rm!
	set a=!a:переместить=mv!
	set a=!a:ветка=branch!
	set a=!a:перейти=checkout!
	set a=!a:слить=merge!
	set a=!a:устройство-слива=mergetool!
	set a=!a:лог=log!
	set a=!a:спрятать=stash!
	set a=!a:метка=tag!
	set a=!a:рабочее-дерево=worktree!
	set a=!a:обновить=fetch!
	set a=!a:получить=pull!
	set a=!a:отправить=push!
	set a=!a:далекий=remote!
	set a=!a:подмодуль=submodule!
	set a=!a:показать=show!
	set a=!a:короткий-лог=shortlog!
	set a=!a:описатьь=describe!
	set a=!a:применить=apply!
	set a=!a:выбрать-выборочно=cherry-pick!
	set a=!a:перебазировать=rebase!
	set a=!a:вернуть=revert!
	set a=!a:разрезать=bisect!
	set a=!a:обвинить=blame!
	set a=!a:греп=grep!

	if [!MOD_CMD_LINE_ARGS!] == [] (
		set MOD_CMD_LINE_ARGS=!a!
	) else (
		set MOD_CMD_LINE_ARGS=!MOD_CMD_LINE_ARGS! !a!
	)
)

@echo on

@git %MOD_CMD_LINE_ARGS%
