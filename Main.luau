--!nolint BuiltinGlobalWrite
--!strict
type func = (...any) -> (...any);
local hookmetamethod: (object: any, method: string, hook: func) -> func  = hookmetamethod;
local getnamecallmethod: () -> string = getnamecallmethod;
local newcclosure: (func, string?) -> func = newcclosure;
local getrawmetatable: (object: any) -> (any) = getrawmetatable;
local setrawmetatable: (object: any, newMeta: {[string]: any}) -> {[string]: any} = setrawmetatable;
local checkcaller: () -> boolean = checkcaller;
local clonefunction: (func) -> func = clonefunction;
local getcallingscript: () -> BaseScript = getcallingscript;
local restorefunction: (func) -> () = restorefunction;
local isfunctionhooked: (func) -> boolean = isfunctionhooked;
local isnewcclosure: (func) -> boolean = isnewcclosure;
local get_wrapped_original: (func) -> func = get_wrapped_original;
local hookfunction: (target: func, hook: func) -> (func) = hookfunction;
local iscclosure: (func) -> boolean = iscclosure;
local islclosure: (func) -> boolean = islclosure;
local isexecutorclosure: (func) -> boolean = isexecutorclosure;
local isourclosure: (func) -> boolean = isexecutorclosure;
local newlclosure: (func) -> func = newlclosure;
local setnamecallmethod: (string) -> () = setnamecallmethod;
local isreadonly: typeof(table.isfrozen) = isreadonly;
local setreadonly: ({[any]: any}, boolean) -> () = setreadonly;
local identifyexecutor: () -> string = identifyexecutor;
local setclipboard: (string) -> () = setclipboard;
local getreg: () -> {[any]: any} = getreg;
local getgc: (operand: boolean) -> {[any]: any} = getgc;
local cloneref: (any) -> any= cloneref;
local clonereference = cloneref;
local compareinstances: (Instance, Instance) -> boolean = compareinstances;
local getobjects: (string) -> {[number]: Model} = getobjects;
local getgenv: () -> {[string]: any} = getgenv;
local getrenv: () -> {[string]: any} = getrenv;
local getscriptbytecode: (BaseScript) -> string = getscriptbytecode;
local getscriptclosure: (BaseScript) -> func = getscriptclosure;
local gettenv: (thread) -> {[string]: any} = gettenv;
local getscriptfromthread: (thread) -> BaseScript = getscriptfromthread;
local getthreadidentity: () -> number = getthreadidentity;
local setthreadidentity: (number) -> () = setthreadidentity;
local gethui: () -> CoreGui = gethui;
local fireclickdetector: (ClickDetector, number) -> () = fireclickdetector;
local firetouchinterest: (Instance, Instance, boolean) -> () = firetouchinterest;
local fireproximityprompt: (ProximityPrompt, number) -> () = fireproximityprompt;
local getconnections: (RBXScriptConnection) -> {[number]: connection_result} = getconnections;
local run_on_actor: (Actor, string, any) -> () = run_on_actor;
local create_comm_channel: () -> (number, BindableEvent) = create_comm_channel;
local isparallel: () -> boolean = isparallel;
local getactorthreads: () -> {[number]: thread} = getactorthreads;
local run_on_thread: (thread, string, any) -> () = run_on_thread;
local readfile: (string) -> string = readfile;
local listfiles: (string) -> {[number]: string} = listfiles;
local writefile: (string, string) -> () = writefile;
local makefolder: (string) -> () = makefolder;
local isfile: (string) -> boolean = isfile;
local isfolder: (string) -> boolean = isfolder;
local delfile: (string) -> () = delfile;
local delfolder: (string) -> () = delfolder;
local game: DataModel & {["HttpGet"]: (self: DataModel, link: string) -> string} = game;
local httppost: (link: string, data: string, string?) -> string = httppost;
local getthreadfromscript: (BaseScript) -> thread = getthreadfromscript;
local base64_encode: (string) -> string = base64_encode;
local base64_decode: (string) -> string = base64_decode;
local getactors: () -> {[number]: Actor} = getactors;
local setfflag: (name: string, value: any) -> boolean = setfflag;
local isnetworkowner: (Instance) -> boolean = isnetworkowner;
local firesignal: (RBXScriptSignal) -> () = firesignal;
local getproperties: (Instance) -> {[string]: any} = getproperties;
local gethiddenproperties: (Instance) -> {[string]: any} = gethiddenproperties;
local getinstancelist: () -> {[string]: any} = getinstancelist;
local getinstances: () -> {[string]: any} = getinstances;
local getnilinstances: () -> {[string]: any} = getnilinstances;
local isscriptable: (Instance, string) -> boolean = isscriptable;
local setscriptable: (Instance, string, boolean) -> boolean = setscriptable;
local replicatesignal: (RBXScriptSignal, ...any) -> () = replicatesignal;
local cansignalreplicate: (RBXScriptSignal) -> boolean = cansignalreplicate;
local getfunctionhash: ((...any) -> (...any)) -> string = getfunctionhash;
local getsenv: (BaseScript) -> {[string]: any} = getsenv;
local filtergc: (type: string, options: filter_gc, return_one: boolean?) -> any = filtergc;
local getloadedmodules: () -> {[number]: ModuleScript} = getloadedmodules;
local saveinstance: (Instance, string?, save_instance?) -> () = saveinstance;
local setstackhidden: (closure: (...any) -> (...any), hidden: boolean?) -> () = setstackhidden;
local restoreproto: (to_restore: (...any) -> (...any)) -> () = restoreproto;
local hooksignal: (signal: RBXScriptSignal, callback: (info: hook_signal_info, prop: any) -> (...any)) -> () = hooksignal;
local restoresignal: (signal: RBXScriptSignal) -> () = restoresignal;
local issignalhooked: (signal: RBXScriptSignal) -> boolean = issignalhooked;
local checkcallstack: (type: string, level: number?) -> boolean = checkcallstack;
local decomplie: (target: func | LuaSourceContainer, options: decomplie_options?) -> string = decomplie;
local getscriptname: (script: LuaSourceContainer) -> string = getscriptname;
local getsignalarguments: (signal: RBXScriptSignal) -> {[string]: any} = getsignalarguments;
local isluaconnection: (connection: RBXScriptConnection) -> boolean = isluaconnection;
local getcallbackvalue: (Instance, string) -> (...any) -> (...any) = getcallbackvalue;
local getscripts: () -> {[number]: BaseScript} = getscripts;
local getallthreads: () -> {[number]: thread} = getallthreads;
local getthreadstack: (thread: thread, index: number) -> any  = getthreadstack;
local setthreadstack: (thread: thread, index: number, value: any) -> () = setthreadstack;
local getunionassetid: (union: UnionOperation) -> string = getunionassetid;
local getreplicablesignals: () -> {[number]: string} = getreplicablesignals;
local syn = {} :: syn;
export type decomplie_options = {
	VarboseFunctions: boolean?;
	FunctionLine: boolean?;
	FunctionUpvalues: boolean?;
	FunctionConstants: boolean?;
	RenameLoopVaraibles: boolean?;
	Semicolons: boolean?;
		
};
export type trampoline_call_stack = {
	currentLine: number;
	env: {[string]: any};
	source: string;
	name: string;
	numparmas: number;
	is_vararg: boolean;
	func: func;
};
export type thread_options = {
	script: LuaSourceContainer;
	idenity: number;
	env: {[string]: any};
	thread: thread;		
};
export type syn = {
	oth: {
		hook: (target: func, hook: func)	->  func;
		unhook: (target: func, hook: func?) -> boolean;
		get_root_callback: () -> func;
		is_hook_thread: () -> boolean;
		get_orginal_thread: () -> thread;
	};
	queue_on_teleport: (script: string) -> ();
	clear_teleport_queue: () -> ();
	get_thread_identity: () -> number;
	set_thread_identity: (level: number) -> ();
	protect_gui: (target: Instance) -> ();
	unprotect_gui: (target: Instance) -> ();
	trampoline_call: (target: func, call_stack: trampoline_call_stack, thread_options: thread_options, ...any) -> (boolean, ...any|string)
};

export type hook_signal_info = {
	Connection: RBXScriptConnection;
	Function: (...any) -> (...any);
	Index: number;
};
--[[export type hook_signal_args = {
	info: {
		Connection: RBXScriptConnection;
		Function: (...any) -> (...any);
		Index: number;
	};
	prop: any
};]]
export type save_instance = {
	FileName: string?;
	IgnoreArchiveble: boolean?;
	SavePlayerCharacters: boolean?;
	SavePlayers: boolean?;
	DisableCompression: boolean?;
	Decomplie: boolean?;
	SaveNonCreatable: boolean?;
	NilInstances: boolean?;
	CopyToClipboard: boolean?;
	IgnoreList: {[number]: Instance};
}
export type filter_gc = {
	Keys: {[string]: any}?;
	Values: {[any]: any}?;
	KeyValuePairs: {[string]: any}?;
	Metatable: {[string]: any}?;
	Name: string?;
	Constants: {[number]: any}?;
	Upvalues: {[number]: any}?;
	IgnoreSyn: boolean;
	Proto: (...any) -> (...any)?;
	Enviorment: {[string]: any}?;
	Hash: string?;
	StartLine: number?;
};
export type connection_result = { 
	Disable: (self: connection_result) -> ();
	Enable: (self: connection_result) -> ();
	Fire: (self: connection_result, ...any?) -> ();
	Disconnect: (self: connection_result) -> ();
	Function: func;
	Thread: thread;
	State: number;
};
export type debuginfo = {
	source: string;
	short_src: string;
	linedefined: number;
	what: string;
	name: string;
	namewhat: string;
	nups: number;
	func: func;
};
export type debug_lib = {
	getmetatable: (any) -> any;
	getupvalues: (func) -> {[number | string]: any};
	getupvalue: (func, stackIndex: number) -> any;
	getprotos: (func) -> {[number]: (...any) -> (...any)};
	getproto: (func, stackIndex: number) -> func;
	getconstant: (func, stackIndex: number) -> any;
	getconstants: (func) -> {[number | string]: any};
	getinfo: (func | number) -> debuginfo;
	setconstant: (func | number, stackIndex: number, value: any) -> ();
	getstack: (level: number, stackIndex: number) -> ();
	setstack: (level: number, stackIndex: number, value: any) -> ();
	setupvalue: (func | number, index: number, value: any) -> ();
	setname: (func, functionName: string) -> ();
	isvalidlevel: (number) -> boolean;
	getregistry: () -> {[any]: any};
	setmetatable: (object: any, newMeta: {[string]: any}) -> ();
};

export type RSA = {
	generate_key_pair: (bits: number) -> (string, string);
	encrypt: (data: string, public_key: string) -> string;
	decrypt: (text: string, private_key: string) -> string;
	sign: (string, private_key: string) -> string;
	verify: (string, string, public_key: string) -> boolean;
};
export type crypt = {
	hash: (data: string, algorithm: string) -> string;
	encrypt: (data: string, key: string, iv: string, mode: string) -> (string, string);
	decrypt: (data: string, key: string, iv: string, mode: string) -> string;
	generatekey: (length: number?) -> string;
	rsa: RSA;	
};
debug = debug :: debug_lib & typeof(debug)
local crypt = {} :: crypt;
