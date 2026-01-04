--!strict
--!nolint UninitializedLocal

export type actor_chanel_obj = {
	Fire: (self: actor_chanel_obj, ...any) -> ...any;
	Event: RBXScriptSignal;
};
export type filter_gc_options=  {
	Name: string?;
	Constants: {[number]: any}?;
	Upvalues: {[number]: any}?;
	IgnoreExecutor: boolean?;
	Keys: {[any]: any}?;
	Values: {[any]: any}?;
	KeyValuePairs: {[any]: any}?;
	Metatable: {[any]: any}?;
};
export type debug_getinfo_res = {
	name: string;
	source: string;
	short_src: string;
	what: string;
	currentline: number;
	linedefined: number;
	lastlinedefined: number;
	nups: number;
	nparmas: number;
	func: (...any) -> (...any) -> (...any);
};
export type http_request = {
	Url: string;
	Method: "POST" | "PATCH" | "GET"?;
	Headers: {[any]: any}?;
	Body: string?
};
export type http_response = {
	Success: boolean;
	StatusCode: number;
	StatusMessage: string;
	Headers: {[any]: any};
	Body: string;
};
export type get_connections_result = {
	Enabled: boolean;
	ForeignState: boolean;
	LuaConnection: boolean;
	Function: (...any) -> (...any)?;
	Thread: thread;
	Fire: (self: get_connections_result, ...any) -> ();
	Defer: (self: get_connections_result, ...any) -> ();
	Disable: (self: get_connections_result) -> ();
	Enable: (self: get_connections_result) -> ();
	Disconnect: (self: get_connections_result) -> ();
};
export type web_socket_obj = {
	Close: (self: web_socket_obj) -> ();
	OnClose: RBXScriptSignal;
	OnMessage: RBXScriptSignal;
	Send: (self: web_socket_obj, name: string) -> ();
	
};
export type enviorment = {
	setstackhidden: (func_or_level: ((...any) -> (...any) | number), bool: boolean) -> ();
	hookfunction: (func: (...any) -> (...any), hook: (...any) -> (...any)) -> (...any) -> (...any);
	hookmetamethod: (obj: any, meta_method_str: string, hook: (...any) -> (...any)) -> (...any);
	cloneref: (obj: Instance) -> Instance;
	clonefunction: (func: (...any) -> (...any)) -> (...any) -> (...any);
	getrenv: () -> {[string]: any};
	getreg: () -> {[number]: any};
	getgc: (bool: boolean) -> {[number]: any};
	create_comm_channel: (name: string?) -> (string, any);
	get_comm_channel: (id: string) -> actor_chanel_obj;
	getactors: () -> {[number]: Actor};
	isparallel: () -> boolean;
	on_actor_added: RBXScriptSignal;
	run_on_actor: (actor: Actor, source_str: string) -> ();
	cache: {
		invalidate: (obj: Instance) -> ();
		iscached: (obj: Instance) -> boolean;
		replace: (obj: Instance, replacement_obj: Instance) -> ();
	};
	checkcaller: () -> boolean;
	getfunctionhash: (func: (...any) -> (...any)) -> string;
	iscclosure: (func: (...any) -> (...any)) -> boolean;
	islclosure: (func: (...any) -> (...any)) -> boolean;
	isexecutorclosure: (func: (...any) -> (...any)) -> boolean;
	isourclosure: (func: (...any) -> (...any)) -> boolean;
	isfunctionhooked: (func: (...any) -> (...any)) -> boolean;
	isnewcclosure: (func: (...any) -> (...any)) -> boolean;
	newcclosure: (func: (...any) -> (...any), debug_name_str: string?) -> (...any) -> (...any);
	newlclosure: (func: (...any) -> (...any), debug_name_str: string?) -> (...any) -> (...any);
	restorefunction: (func: (...any) -> (...any)) -> ();
	rconsoleclear: () -> ();
	rconsoleerr: (err: string) -> ();
	rconsolehidden: () -> boolean;
	rconsolehide: () -> ();
	rconsoledestroy: () -> ();
	rconsoleinfo: (str: string) -> ();
	rconsoleinput: () -> string;
	rconsolename: (title: string) -> ();
	rconsoleprint: (str: string) -> ();
	rconsoleshow: () -> ();
	rconsoletoggle: () -> ();
	rconsoletop: () -> ();
	rconsolewarn: (str: string) -> ();
	crypt: {
		decrypt: (data: string, key: string, iv: string?, alg: string?) -> string;
		encrypt: (data: string, key: string, iv: string?, alg: string?) -> string;
		generatebytes: (length: number) -> string;
		generatekey: () -> string;
		hash: (data: string, alg: string?) -> string;
		hmac: (data: string, key: string, alg: string?) -> ();
		random: (length: number) -> string;
	};
	debug: {
		getcallstack: {[number]: {[any]: any}};
		getconstant: (func: (...any) -> (...any) | number, index: number) -> any;
		getconstants: (func: (...any) -> (...any) | number) -> {[number]: any};
		getinfo: (func: (...any) -> (...any) | number, what: string?) -> debug_getinfo_res;
		getprotos: (func: (...any) -> (...any) | number) -> {[number]: (...any) -> (...any) -> (...any)};
		getproto: (func: (...any) -> (...any) | number, index: number) -> (...any) -> (...any);
		getstack: (level: number, index: number) -> any;
		getupvalue: (func: (...any) -> (...any) | number, index: number) -> any;
		getupvalues: (func: (...any) -> (...any) | number, index: number) -> {[number]: any};
		setstack: (func: (...any) -> (...any) | number, index: number, val: any) -> ();
		validlevel: (level: number) -> boolean;
	};
	cleardrawcache: () -> ();
	getrenderproperty: (obj: any, prop: string) -> any;
	isrenderobj: (obj: any) -> boolean;
	setrenderproperty: (obj: Object, prop: string, val: any) -> ();
	base64decode: (data: string) -> string;
	base64encode: (data: string) -> string;
	lz4compress: (data: string) -> string;
	lz4decompress: (data: string, size: number) -> string;
	filtergc: (type: string, paramets: filter_gc_options) -> {[number]: any};
	getgenv: () -> {[string]: any};
	gettenv: (thr: thread) -> {[string]: any};	
	appendfile: (path_str:string, data: string) -> ();
	delfile: (path_str: string) -> ();
	delfolder: (path_str: string) -> ();
	dofile: (path_str: string, ...any) -> ();
	getcustomasset: (path_str: string) -> string;
	isfile: (path_str: string) -> boolean;
	isfolder: (path_str: string) -> boolean;
	listfiles: (path_str: string) -> {[number]: string};
	loadfile: (path_str: string) -> any;
	makefolder: (path_str: string) -> ();
	readfile: (path_str: string) -> string;
	writefile: (path_str: string, data: string) -> ();
	iswindowactive: () -> boolean;
	keyclick: (keycode: number) -> ();
	keypress: (keycode: number) -> ();
	keyrelease: (keycode: number) -> ();
	mouse1click: () -> ();
	mouse1press: () -> ();
	mouse1release: () -> ();
	mouse2click: () -> ();
	mouse2press: () -> ();
	mouse2release: () -> ();
	mousemoveabs: (a: number, b: number) -> ();
	mousemoverel: (a: number, b: number) -> ();
	mousescroll: (delta: number) -> ();
	compareinstances: (a: Instance, b: Instance) -> boolean;
	fireclickdetector: (detector: ClickDetector, distance: number?, event: string?) -> ();
	fireproximityprompt: (prompt: ProximityPrompt, amount: number?, skip: boolean?) -> ();
	firetouchinterest: (part: BasePart, target: BasePart, toggle: number) -> ();
	getcallbackvalue: (instance: Object, property: string) -> (...any) -> (...any);
	gethui: () -> Folder;
	getinstancecache: () -> {[number]: Instance};
	getinstances: () -> {[number]: Instance};
	getnilinstances: () -> {[number]: Instance};
	getrendersteppedlist: () -> {[number]: (...any) -> (...any)};
	getnamecallmethod: () -> string;
	getrawmetatable: (obj: any) -> {[string]: any};
	setrawmetatable: typeof(setmetatable);
	isreadonly: (obj: {[any]: any}) -> boolean;
	setreadonly: (obj: {[any]: any}, state: boolean) -> ();
	makereadonly: (obj: {[any]: any}) -> ();
	makewriteable: (obj: {[any]: any}) -> ();
	setnamecallmethod: () -> string;
	clearqueueonteleport: () -> ();
	getfflag: (name_str: string) -> any;
	setfflag: (name_str: string, val: any) -> ();
	getfpscap: () -> number;
	gethwid: () -> string;
	identifyexecutor: () -> (string, string);
	messagebox: (text_str: string, caption: string, flags: number) -> number;
	queueonteleport: (script_scr: string) -> ();
	request: (options: http_request) -> http_response;
	setclipboard: (data_str: string) -> ();
	setfpscap: (cap: number) -> ();
	gethiddenproperties: (obj: Instance) -> {[string]: any};
	gethiddenproperty: (obj: Instance, property_str: string) -> any;
	sethiddenproperty: (obj: Instance, property_str: string, val: any) -> ();
	getproperties: (obj: Instance) -> {[string]: any};
	getthreadidentity: () -> number;
	setthreadidentity: (level: number) -> ();
	isnetworkowner: (part: BasePart) -> boolean;
	isscriptable: (obj: Instance, property_str: string) -> boolean;
	setscriptable: (obj: Instance, property_str: string, scriptable: boolean) -> boolean;
	setsimulationradius: (min: number, max: number) -> ();
	getcallingscript: () -> BaseScript;
	getloadedmodules: () -> {[number]: ModuleScript};
	getmodules: () -> {[number]: ModuleScript};
	getrunningscripts: () -> {[number]: BaseScript};
	getscriptbytecode: (script: BaseScript) -> string;
	getscriptclosure: (target: BaseScript) -> (...any) -> (...any);
	getscriptfromthread: (thr: thread) -> BaseScript;
	getscriphash: (script: BaseScript) -> string;
	getscripts: () -> {[number]: BaseScript};
	getsenv: (script: BaseScript) -> {[string]: any};
	cansignalreplicate: (signal: RBXScriptSignal) -> boolean;
	firesignal: (signal: RBXScriptSignal, ...any) -> ();
	getconnections: (signal: RBXScriptSignal) -> get_connections_result;
	getsignalarguments: (signal: RBXScriptSignal) -> {[number]: any};
	getsignalargumentsinfo: (signal: RBXScriptSignal) -> {
		Type: string;
		Name: string
	};
	getsignalwhitelist: () -> {
		Event: string;
		Parent: string;
	};
	replicatesignal: (signal: RBXScriptSignal, ...any) -> ();
	WebSocket: {
		connect: (url: string) -> web_socket_obj;
	};
};

local enviorment: enviorment = getfenv();

local setstackhidden = enviorment.setstackhidden;
local hookfunction = enviorment.hookfunction;

local hookmetamethod = enviorment.hookmetamethod;
local cloneref = enviorment.cloneref;

local clonefunction = enviorment.clonefunction;
local getrenv = enviorment.getrenv;

local getreg = enviorment.getreg;
local getgc: (bool: boolean) -> {[number]: any};

local create_comm_channel: (name: string?) -> (string, any);
local get_comm_channel: (id: string) -> actor_chanel_obj;

local getactors: () -> {[number]: Actor};
local isparallel: () -> boolean;

local on_actor_added: RBXScriptSignal;
local run_on_actor: (actor: Actor, source_str: string) -> ();

local cache = enviorment.cache;
local checkcaller: () -> boolean;

local getfunctionhash: (func: (...any) -> (...any)) -> string;
local iscclosure: (func: (...any) -> (...any)) -> boolean;

local islclosure: (func: (...any) -> (...any)) -> boolean;
local isexecutorclosure: (func: (...any) -> (...any)) -> boolean;

local isourclosure: (func: (...any) -> (...any)) -> boolean;
local isfunctionhooked: (func: (...any) -> (...any)) -> boolean;

local isnewcclosure: (func: (...any) -> (...any)) -> boolean;
local newcclosure: (func: (...any) -> (...any), debug_name_str: string?) -> (...any) -> (...any);

local newlclosure: (func: (...any) -> (...any), debug_name_str: string?) -> (...any) -> (...any);
local restorefunction: (func: (...any) -> (...any)) -> ();

local rconsoleclear: () -> ();
local rconsoleerr: (err: string) -> ();

local rconsolehidden: () -> boolean;
local rconsolehide: () -> ();

local rconsoledestroy: () -> ();
local rconsoleinfo: (str: string) -> ();

local rconsoleinput: () -> string;
local rconsolename: (title: string) -> ();

local rconsoleprint: (str: string) -> ();
local rconsoleshow: () -> ();

local rconsoletoggle: () -> ();
local rconsoletop: () -> ();

local rconsolewarn: (str: string) -> ();
local crypt = enviorment.crypt;

local debug = enviorment.debug;
local cleardrawcache: () -> ();

local getrenderproperty: (obj: any, prop: string) -> any;
local isrenderobj: (obj: any) -> boolean;

local setrenderproperty: (obj: Object, prop: string, val: any) -> ();
local base64decode: (data: string) -> string;

local base64encode: (data: string) -> string;
local lz4compress: (data: string) -> string;

local lz4decompress: (data: string, size: number) -> string;
local filtergc: (type: string, paramets: filter_gc_options) -> {[number]: any};

local getgenv: () -> {[string]: any};
local gettenv: (thr: thread) -> {[string]: any};

local appendfile: (path_str:string, data: string) -> ();
local delfile: (path_str: string) -> ();

local delfolder: (path_str: string) -> ();
local dofile: (path_str: string, ...any) -> ();

local getcustomasset: (path_str: string) -> string;
local isfile: (path_str: string) -> boolean;

local isfolder: (path_str: string) -> boolean;
local listfiles: (path_str: string) -> {[number]: string};

local loadfile: (path_str: string) -> any;
local makefolder: (path_str: string) -> ();

local readfile: (path_str: string) -> string;
local writefile: (path_str: string, data: string) -> ();

local iswindowactive: () -> boolean;
local keyclick: (keycode: number) -> ();

local keypress: (keycode: number) -> ();
local keyrelease: (keycode: number) -> ();

local mouse1click: () -> ();
local mouse1press: () -> ();

local mouse1release: () -> ();
local mouse2click: () -> ();

local mouse2press: () -> ();
local mouse2release: () -> ();

local mousemoveabs: (a: number, b: number) -> ();
local mousemoverel: (a: number, b: number) -> ();

local mousescroll: (delta: number) -> ();
local compareinstances: (a: Instance, b: Instance) -> boolean;

local fireclickdetector: (detector: ClickDetector, distance: number?, event: string?) -> ();
local fireproximityprompt: (prompt: ProximityPrompt, amount: number?, skip: boolean?) -> ();

local firetouchinterest: (part: BasePart, target: BasePart, toggle: number) -> ();
local getcallbackvalue: (instance: Object, property: string) -> (...any) -> (...any);

local gethui: () -> Folder;
local getinstancecache: () -> {[number]: Instance};

local getinstances: () -> {[number]: Instance};
local getnilinstances: () -> {[number]: Instance};

local getrendersteppedlist: () -> {[number]: (...any) -> (...any)};
local getnamecallmethod: () -> string;

local getrawmetatable: (obj: any) -> {[string]: any};
local setrawmetatable: typeof(setmetatable);

local isreadonly: (obj: {[any]: any}) -> boolean;
local setreadonly: (obj: {[any]: any}, state: boolean) -> ();

local makereadonly: (obj: {[any]: any}) -> ();
local makewriteable: (obj: {[any]: any}) -> ();

local setnamecallmethod: () -> string;
local clearqueueonteleport: () -> ();

local getfflag: (name_str: string) -> any;
local setfflag: (name_str: string, val: any) -> ();

local getfpscap: () -> number;
local gethwid: () -> string;

local identifyexecutor: () -> (string, string);
local messagebox: (text_str: string, caption: string, flags: number) -> number;

local queueonteleport: (script_scr: string) -> ();
local request: (options: http_request) -> http_response;

local setclipboard: (data_str: string) -> ();
local setfpscap: (cap: number) -> ();

local gethiddenproperties: (obj: Instance) -> {[string]: any};
local gethiddenproperty: (obj: Instance, property_str: string) -> any;

local sethiddenproperty: (obj: Instance, property_str: string, val: any) -> ();
local getproperties: (obj: Instance) -> {[string]: any};

local getthreadidentity: () -> number;
local setthreadidentity: (level: number) -> ();

local isnetworkowner: (part: BasePart) -> boolean;
local isscriptable: (obj: Instance, property_str: string) -> boolean;

local setscriptable: (obj: Instance, property_str: string, scriptable: boolean) -> boolean;
local setsimulationradius: (min: number, max: number) -> ();

local getcallingscript: () -> BaseScript;
local getloadedmodules: () -> {[number]: ModuleScript};

local getmodules: () -> {[number]: ModuleScript};
local getrunningscripts: () -> {[number]: BaseScript};

local getscriptbytecode: (script: BaseScript) -> string;
local getscriptclosure: (target: BaseScript) -> (...any) -> (...any);

local getscriptfromthread: (thr: thread) -> BaseScript;
local getscriphash: (script: BaseScript) -> string;

local getscripts: () -> {[number]: BaseScript};
local getsenv: (script: BaseScript) -> {[string]: any};

local cansignalreplicate: (signal: RBXScriptSignal) -> boolean;
local firesignal: (signal: RBXScriptSignal, ...any) -> ();

local getconnections: (signal: RBXScriptSignal) -> get_connections_result;
local getsignalarguments: (signal: RBXScriptSignal) -> {[number]: any};

local getsignalargumentsinfo = enviorment.getsignalarguments;
local getsignalwhitelist = enviorment.getsignalwhitelist;

local replicatesignal: (signal: RBXScriptSignal, ...any) -> ();
local WebSocket = enviorment.WebSocket;

local detour = enviorment.hookfunction;
local detourmetamethod = enviorment.hookmetamethod;
