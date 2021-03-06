??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??

?
EnConv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameEnConv1/kernel
y
"EnConv1/kernel/Read/ReadVariableOpReadVariableOpEnConv1/kernel*&
_output_shapes
:*
dtype0
p
EnConv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameEnConv1/bias
i
 EnConv1/bias/Read/ReadVariableOpReadVariableOpEnConv1/bias*
_output_shapes
:*
dtype0
?
EnConv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameEnConv2/kernel
y
"EnConv2/kernel/Read/ReadVariableOpReadVariableOpEnConv2/kernel*&
_output_shapes
:*
dtype0
p
EnConv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameEnConv2/bias
i
 EnConv2/bias/Read/ReadVariableOpReadVariableOpEnConv2/bias*
_output_shapes
:*
dtype0
|
DenseMid/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_nameDenseMid/kernel
u
#DenseMid/kernel/Read/ReadVariableOpReadVariableOpDenseMid/kernel* 
_output_shapes
:
??*
dtype0
s
DenseMid/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameDenseMid/bias
l
!DenseMid/bias/Read/ReadVariableOpReadVariableOpDenseMid/bias*
_output_shapes	
:?*
dtype0
?
DenseClass1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*#
shared_nameDenseClass1/kernel
{
&DenseClass1/kernel/Read/ReadVariableOpReadVariableOpDenseClass1/kernel* 
_output_shapes
:
??*
dtype0
y
DenseClass1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nameDenseClass1/bias
r
$DenseClass1/bias/Read/ReadVariableOpReadVariableOpDenseClass1/bias*
_output_shapes	
:?*
dtype0
?
DenseClass2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*#
shared_nameDenseClass2/kernel
z
&DenseClass2/kernel/Read/ReadVariableOpReadVariableOpDenseClass2/kernel*
_output_shapes
:	?@*
dtype0
x
DenseClass2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameDenseClass2/bias
q
$DenseClass2/bias/Read/ReadVariableOpReadVariableOpDenseClass2/bias*
_output_shapes
:@*
dtype0
v
LayOut/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*
shared_nameLayOut/kernel
o
!LayOut/kernel/Read/ReadVariableOpReadVariableOpLayOut/kernel*
_output_shapes

:@
*
dtype0
n
LayOut/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameLayOut/bias
g
LayOut/bias/Read/ReadVariableOpReadVariableOpLayOut/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/EnConv1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/EnConv1/kernel/m
?
)Adam/EnConv1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/EnConv1/kernel/m*&
_output_shapes
:*
dtype0
~
Adam/EnConv1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/EnConv1/bias/m
w
'Adam/EnConv1/bias/m/Read/ReadVariableOpReadVariableOpAdam/EnConv1/bias/m*
_output_shapes
:*
dtype0
?
Adam/EnConv2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/EnConv2/kernel/m
?
)Adam/EnConv2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/EnConv2/kernel/m*&
_output_shapes
:*
dtype0
~
Adam/EnConv2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/EnConv2/bias/m
w
'Adam/EnConv2/bias/m/Read/ReadVariableOpReadVariableOpAdam/EnConv2/bias/m*
_output_shapes
:*
dtype0
?
Adam/DenseMid/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/DenseMid/kernel/m
?
*Adam/DenseMid/kernel/m/Read/ReadVariableOpReadVariableOpAdam/DenseMid/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/DenseMid/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/DenseMid/bias/m
z
(Adam/DenseMid/bias/m/Read/ReadVariableOpReadVariableOpAdam/DenseMid/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/DenseClass1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??**
shared_nameAdam/DenseClass1/kernel/m
?
-Adam/DenseClass1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/DenseClass1/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/DenseClass1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdam/DenseClass1/bias/m
?
+Adam/DenseClass1/bias/m/Read/ReadVariableOpReadVariableOpAdam/DenseClass1/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/DenseClass2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@**
shared_nameAdam/DenseClass2/kernel/m
?
-Adam/DenseClass2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/DenseClass2/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/DenseClass2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/DenseClass2/bias/m

+Adam/DenseClass2/bias/m/Read/ReadVariableOpReadVariableOpAdam/DenseClass2/bias/m*
_output_shapes
:@*
dtype0
?
Adam/LayOut/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*%
shared_nameAdam/LayOut/kernel/m
}
(Adam/LayOut/kernel/m/Read/ReadVariableOpReadVariableOpAdam/LayOut/kernel/m*
_output_shapes

:@
*
dtype0
|
Adam/LayOut/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*#
shared_nameAdam/LayOut/bias/m
u
&Adam/LayOut/bias/m/Read/ReadVariableOpReadVariableOpAdam/LayOut/bias/m*
_output_shapes
:
*
dtype0
?
Adam/EnConv1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/EnConv1/kernel/v
?
)Adam/EnConv1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/EnConv1/kernel/v*&
_output_shapes
:*
dtype0
~
Adam/EnConv1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/EnConv1/bias/v
w
'Adam/EnConv1/bias/v/Read/ReadVariableOpReadVariableOpAdam/EnConv1/bias/v*
_output_shapes
:*
dtype0
?
Adam/EnConv2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/EnConv2/kernel/v
?
)Adam/EnConv2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/EnConv2/kernel/v*&
_output_shapes
:*
dtype0
~
Adam/EnConv2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/EnConv2/bias/v
w
'Adam/EnConv2/bias/v/Read/ReadVariableOpReadVariableOpAdam/EnConv2/bias/v*
_output_shapes
:*
dtype0
?
Adam/DenseMid/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/DenseMid/kernel/v
?
*Adam/DenseMid/kernel/v/Read/ReadVariableOpReadVariableOpAdam/DenseMid/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/DenseMid/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/DenseMid/bias/v
z
(Adam/DenseMid/bias/v/Read/ReadVariableOpReadVariableOpAdam/DenseMid/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/DenseClass1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??**
shared_nameAdam/DenseClass1/kernel/v
?
-Adam/DenseClass1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/DenseClass1/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/DenseClass1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdam/DenseClass1/bias/v
?
+Adam/DenseClass1/bias/v/Read/ReadVariableOpReadVariableOpAdam/DenseClass1/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/DenseClass2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@**
shared_nameAdam/DenseClass2/kernel/v
?
-Adam/DenseClass2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/DenseClass2/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/DenseClass2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/DenseClass2/bias/v

+Adam/DenseClass2/bias/v/Read/ReadVariableOpReadVariableOpAdam/DenseClass2/bias/v*
_output_shapes
:@*
dtype0
?
Adam/LayOut/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*%
shared_nameAdam/LayOut/kernel/v
}
(Adam/LayOut/kernel/v/Read/ReadVariableOpReadVariableOpAdam/LayOut/kernel/v*
_output_shapes

:@
*
dtype0
|
Adam/LayOut/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*#
shared_nameAdam/LayOut/bias/v
u
&Adam/LayOut/bias/v/Read/ReadVariableOpReadVariableOpAdam/LayOut/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
?P
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?O
value?OB?O B?O
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
 	variables
!	keras_api
h

"kernel
#bias
$regularization_losses
%trainable_variables
&	variables
'	keras_api
R
(regularization_losses
)trainable_variables
*	variables
+	keras_api
R
,regularization_losses
-trainable_variables
.	variables
/	keras_api
h

0kernel
1bias
2regularization_losses
3trainable_variables
4	variables
5	keras_api
R
6regularization_losses
7trainable_variables
8	variables
9	keras_api
h

:kernel
;bias
<regularization_losses
=trainable_variables
>	variables
?	keras_api
R
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
h

Dkernel
Ebias
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
R
Jregularization_losses
Ktrainable_variables
L	variables
M	keras_api
h

Nkernel
Obias
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
?
Titer

Ubeta_1

Vbeta_2
	Wdecay
Xlearning_ratem?m?"m?#m?0m?1m?:m?;m?Dm?Em?Nm?Om?v?v?"v?#v?0v?1v?:v?;v?Dv?Ev?Nv?Ov?
 
V
0
1
"2
#3
04
15
:6
;7
D8
E9
N10
O11
V
0
1
"2
#3
04
15
:6
;7
D8
E9
N10
O11
?
regularization_losses
Ynon_trainable_variables

Zlayers
[layer_regularization_losses
\metrics
]layer_metrics
trainable_variables
	variables
 
ZX
VARIABLE_VALUEEnConv1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEEnConv1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses
^non_trainable_variables
trainable_variables

_layers
`layer_regularization_losses
ametrics
blayer_metrics
	variables
 
 
 
?
regularization_losses
cnon_trainable_variables
trainable_variables

dlayers
elayer_regularization_losses
fmetrics
glayer_metrics
	variables
 
 
 
?
regularization_losses
hnon_trainable_variables
trainable_variables

ilayers
jlayer_regularization_losses
kmetrics
llayer_metrics
 	variables
ZX
VARIABLE_VALUEEnConv2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEEnConv2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

"0
#1

"0
#1
?
$regularization_losses
mnon_trainable_variables
%trainable_variables

nlayers
olayer_regularization_losses
pmetrics
qlayer_metrics
&	variables
 
 
 
?
(regularization_losses
rnon_trainable_variables
)trainable_variables

slayers
tlayer_regularization_losses
umetrics
vlayer_metrics
*	variables
 
 
 
?
,regularization_losses
wnon_trainable_variables
-trainable_variables

xlayers
ylayer_regularization_losses
zmetrics
{layer_metrics
.	variables
[Y
VARIABLE_VALUEDenseMid/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEDenseMid/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

00
11

00
11
?
2regularization_losses
|non_trainable_variables
3trainable_variables

}layers
~layer_regularization_losses
metrics
?layer_metrics
4	variables
 
 
 
?
6regularization_losses
?non_trainable_variables
7trainable_variables
?layers
 ?layer_regularization_losses
?metrics
?layer_metrics
8	variables
^\
VARIABLE_VALUEDenseClass1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEDenseClass1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

:0
;1

:0
;1
?
<regularization_losses
?non_trainable_variables
=trainable_variables
?layers
 ?layer_regularization_losses
?metrics
?layer_metrics
>	variables
 
 
 
?
@regularization_losses
?non_trainable_variables
Atrainable_variables
?layers
 ?layer_regularization_losses
?metrics
?layer_metrics
B	variables
^\
VARIABLE_VALUEDenseClass2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEDenseClass2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

D0
E1

D0
E1
?
Fregularization_losses
?non_trainable_variables
Gtrainable_variables
?layers
 ?layer_regularization_losses
?metrics
?layer_metrics
H	variables
 
 
 
?
Jregularization_losses
?non_trainable_variables
Ktrainable_variables
?layers
 ?layer_regularization_losses
?metrics
?layer_metrics
L	variables
YW
VARIABLE_VALUELayOut/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUELayOut/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

N0
O1

N0
O1
?
Pregularization_losses
?non_trainable_variables
Qtrainable_variables
?layers
 ?layer_regularization_losses
?metrics
?layer_metrics
R	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
^
0
1
2
3
4
5
6
7
	8

9
10
11
12
 

?0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
}{
VARIABLE_VALUEAdam/EnConv1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/EnConv1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/EnConv2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/EnConv2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/DenseMid/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/DenseMid/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/DenseClass1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/DenseClass1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/DenseClass2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/DenseClass2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/LayOut/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/LayOut/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/EnConv1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/EnConv1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/EnConv2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/EnConv2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/DenseMid/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/DenseMid/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/DenseClass1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/DenseClass1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/DenseClass2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/DenseClass2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/LayOut/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/LayOut/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_LayInPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_LayInEnConv1/kernelEnConv1/biasEnConv2/kernelEnConv2/biasDenseMid/kernelDenseMid/biasDenseClass1/kernelDenseClass1/biasDenseClass2/kernelDenseClass2/biasLayOut/kernelLayOut/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_100105
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"EnConv1/kernel/Read/ReadVariableOp EnConv1/bias/Read/ReadVariableOp"EnConv2/kernel/Read/ReadVariableOp EnConv2/bias/Read/ReadVariableOp#DenseMid/kernel/Read/ReadVariableOp!DenseMid/bias/Read/ReadVariableOp&DenseClass1/kernel/Read/ReadVariableOp$DenseClass1/bias/Read/ReadVariableOp&DenseClass2/kernel/Read/ReadVariableOp$DenseClass2/bias/Read/ReadVariableOp!LayOut/kernel/Read/ReadVariableOpLayOut/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/EnConv1/kernel/m/Read/ReadVariableOp'Adam/EnConv1/bias/m/Read/ReadVariableOp)Adam/EnConv2/kernel/m/Read/ReadVariableOp'Adam/EnConv2/bias/m/Read/ReadVariableOp*Adam/DenseMid/kernel/m/Read/ReadVariableOp(Adam/DenseMid/bias/m/Read/ReadVariableOp-Adam/DenseClass1/kernel/m/Read/ReadVariableOp+Adam/DenseClass1/bias/m/Read/ReadVariableOp-Adam/DenseClass2/kernel/m/Read/ReadVariableOp+Adam/DenseClass2/bias/m/Read/ReadVariableOp(Adam/LayOut/kernel/m/Read/ReadVariableOp&Adam/LayOut/bias/m/Read/ReadVariableOp)Adam/EnConv1/kernel/v/Read/ReadVariableOp'Adam/EnConv1/bias/v/Read/ReadVariableOp)Adam/EnConv2/kernel/v/Read/ReadVariableOp'Adam/EnConv2/bias/v/Read/ReadVariableOp*Adam/DenseMid/kernel/v/Read/ReadVariableOp(Adam/DenseMid/bias/v/Read/ReadVariableOp-Adam/DenseClass1/kernel/v/Read/ReadVariableOp+Adam/DenseClass1/bias/v/Read/ReadVariableOp-Adam/DenseClass2/kernel/v/Read/ReadVariableOp+Adam/DenseClass2/bias/v/Read/ReadVariableOp(Adam/LayOut/kernel/v/Read/ReadVariableOp&Adam/LayOut/bias/v/Read/ReadVariableOpConst*:
Tin3
12/	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_100696
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameEnConv1/kernelEnConv1/biasEnConv2/kernelEnConv2/biasDenseMid/kernelDenseMid/biasDenseClass1/kernelDenseClass1/biasDenseClass2/kernelDenseClass2/biasLayOut/kernelLayOut/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/EnConv1/kernel/mAdam/EnConv1/bias/mAdam/EnConv2/kernel/mAdam/EnConv2/bias/mAdam/DenseMid/kernel/mAdam/DenseMid/bias/mAdam/DenseClass1/kernel/mAdam/DenseClass1/bias/mAdam/DenseClass2/kernel/mAdam/DenseClass2/bias/mAdam/LayOut/kernel/mAdam/LayOut/bias/mAdam/EnConv1/kernel/vAdam/EnConv1/bias/vAdam/EnConv2/kernel/vAdam/EnConv2/bias/vAdam/DenseMid/kernel/vAdam/DenseMid/bias/vAdam/DenseClass1/kernel/vAdam/DenseClass1/bias/vAdam/DenseClass2/kernel/vAdam/DenseClass2/bias/vAdam/LayOut/kernel/vAdam/LayOut/bias/v*9
Tin2
02.*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_100841ޕ	
?:
?
E__inference_sequential_layer_call_and_return_conditional_losses_99969

inputs
enconv1_99931
enconv1_99933
enconv2_99938
enconv2_99940
densemid_99945
densemid_99947
denseclass1_99951
denseclass1_99953
denseclass2_99957
denseclass2_99959
layout_99963
layout_99965
identity?? ClsDrop1/StatefulPartitionedCall? ClsDrop2/StatefulPartitionedCall?#DenseClass1/StatefulPartitionedCall?#DenseClass2/StatefulPartitionedCall? DenseMid/StatefulPartitionedCall?EnConv1/StatefulPartitionedCall?EnConv2/StatefulPartitionedCall?EnDrop1/StatefulPartitionedCall?LayOut/StatefulPartitionedCall?MidDrop/StatefulPartitionedCall?
EnConv1/StatefulPartitionedCallStatefulPartitionedCallinputsenconv1_99931enconv1_99933*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnConv1_layer_call_and_return_conditional_losses_995962!
EnConv1/StatefulPartitionedCall?
EnPool1/PartitionedCallPartitionedCall(EnConv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnPool1_layer_call_and_return_conditional_losses_995632
EnPool1/PartitionedCall?
EnDrop1/StatefulPartitionedCallStatefulPartitionedCall EnPool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnDrop1_layer_call_and_return_conditional_losses_996252!
EnDrop1/StatefulPartitionedCall?
EnConv2/StatefulPartitionedCallStatefulPartitionedCall(EnDrop1/StatefulPartitionedCall:output:0enconv2_99938enconv2_99940*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnConv2_layer_call_and_return_conditional_losses_996542!
EnConv2/StatefulPartitionedCall?
EnPool2/PartitionedCallPartitionedCall(EnConv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnPool2_layer_call_and_return_conditional_losses_995752
EnPool2/PartitionedCall?
LayFlat/PartitionedCallPartitionedCall EnPool2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_LayFlat_layer_call_and_return_conditional_losses_996772
LayFlat/PartitionedCall?
 DenseMid/StatefulPartitionedCallStatefulPartitionedCall LayFlat/PartitionedCall:output:0densemid_99945densemid_99947*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_DenseMid_layer_call_and_return_conditional_losses_996962"
 DenseMid/StatefulPartitionedCall?
MidDrop/StatefulPartitionedCallStatefulPartitionedCall)DenseMid/StatefulPartitionedCall:output:0 ^EnDrop1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_MidDrop_layer_call_and_return_conditional_losses_997242!
MidDrop/StatefulPartitionedCall?
#DenseClass1/StatefulPartitionedCallStatefulPartitionedCall(MidDrop/StatefulPartitionedCall:output:0denseclass1_99951denseclass1_99953*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_DenseClass1_layer_call_and_return_conditional_losses_997532%
#DenseClass1/StatefulPartitionedCall?
 ClsDrop1/StatefulPartitionedCallStatefulPartitionedCall,DenseClass1/StatefulPartitionedCall:output:0 ^MidDrop/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_ClsDrop1_layer_call_and_return_conditional_losses_997812"
 ClsDrop1/StatefulPartitionedCall?
#DenseClass2/StatefulPartitionedCallStatefulPartitionedCall)ClsDrop1/StatefulPartitionedCall:output:0denseclass2_99957denseclass2_99959*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_DenseClass2_layer_call_and_return_conditional_losses_998102%
#DenseClass2/StatefulPartitionedCall?
 ClsDrop2/StatefulPartitionedCallStatefulPartitionedCall,DenseClass2/StatefulPartitionedCall:output:0!^ClsDrop1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_ClsDrop2_layer_call_and_return_conditional_losses_998382"
 ClsDrop2/StatefulPartitionedCall?
LayOut/StatefulPartitionedCallStatefulPartitionedCall)ClsDrop2/StatefulPartitionedCall:output:0layout_99963layout_99965*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_LayOut_layer_call_and_return_conditional_losses_998672 
LayOut/StatefulPartitionedCall?
IdentityIdentity'LayOut/StatefulPartitionedCall:output:0!^ClsDrop1/StatefulPartitionedCall!^ClsDrop2/StatefulPartitionedCall$^DenseClass1/StatefulPartitionedCall$^DenseClass2/StatefulPartitionedCall!^DenseMid/StatefulPartitionedCall ^EnConv1/StatefulPartitionedCall ^EnConv2/StatefulPartitionedCall ^EnDrop1/StatefulPartitionedCall^LayOut/StatefulPartitionedCall ^MidDrop/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????::::::::::::2D
 ClsDrop1/StatefulPartitionedCall ClsDrop1/StatefulPartitionedCall2D
 ClsDrop2/StatefulPartitionedCall ClsDrop2/StatefulPartitionedCall2J
#DenseClass1/StatefulPartitionedCall#DenseClass1/StatefulPartitionedCall2J
#DenseClass2/StatefulPartitionedCall#DenseClass2/StatefulPartitionedCall2D
 DenseMid/StatefulPartitionedCall DenseMid/StatefulPartitionedCall2B
EnConv1/StatefulPartitionedCallEnConv1/StatefulPartitionedCall2B
EnConv2/StatefulPartitionedCallEnConv2/StatefulPartitionedCall2B
EnDrop1/StatefulPartitionedCallEnDrop1/StatefulPartitionedCall2@
LayOut/StatefulPartitionedCallLayOut/StatefulPartitionedCall2B
MidDrop/StatefulPartitionedCallMidDrop/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
^
B__inference_EnPool2_layer_call_and_return_conditional_losses_99575

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
F__inference_DenseClass1_layer_call_and_return_conditional_losses_99753

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
C
'__inference_EnPool2_layer_call_fn_99581

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnPool2_layer_call_and_return_conditional_losses_995752
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
B__inference_EnConv2_layer_call_and_return_conditional_losses_99654

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
C__inference_DenseMid_layer_call_and_return_conditional_losses_99696

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
}
(__inference_EnConv1_layer_call_fn_100319

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnConv1_layer_call_and_return_conditional_losses_995962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?4
?
E__inference_sequential_layer_call_and_return_conditional_losses_99925	
layin
enconv1_99887
enconv1_99889
enconv2_99894
enconv2_99896
densemid_99901
densemid_99903
denseclass1_99907
denseclass1_99909
denseclass2_99913
denseclass2_99915
layout_99919
layout_99921
identity??#DenseClass1/StatefulPartitionedCall?#DenseClass2/StatefulPartitionedCall? DenseMid/StatefulPartitionedCall?EnConv1/StatefulPartitionedCall?EnConv2/StatefulPartitionedCall?LayOut/StatefulPartitionedCall?
EnConv1/StatefulPartitionedCallStatefulPartitionedCalllayinenconv1_99887enconv1_99889*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnConv1_layer_call_and_return_conditional_losses_995962!
EnConv1/StatefulPartitionedCall?
EnPool1/PartitionedCallPartitionedCall(EnConv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnPool1_layer_call_and_return_conditional_losses_995632
EnPool1/PartitionedCall?
EnDrop1/PartitionedCallPartitionedCall EnPool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnDrop1_layer_call_and_return_conditional_losses_996302
EnDrop1/PartitionedCall?
EnConv2/StatefulPartitionedCallStatefulPartitionedCall EnDrop1/PartitionedCall:output:0enconv2_99894enconv2_99896*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnConv2_layer_call_and_return_conditional_losses_996542!
EnConv2/StatefulPartitionedCall?
EnPool2/PartitionedCallPartitionedCall(EnConv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnPool2_layer_call_and_return_conditional_losses_995752
EnPool2/PartitionedCall?
LayFlat/PartitionedCallPartitionedCall EnPool2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_LayFlat_layer_call_and_return_conditional_losses_996772
LayFlat/PartitionedCall?
 DenseMid/StatefulPartitionedCallStatefulPartitionedCall LayFlat/PartitionedCall:output:0densemid_99901densemid_99903*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_DenseMid_layer_call_and_return_conditional_losses_996962"
 DenseMid/StatefulPartitionedCall?
MidDrop/PartitionedCallPartitionedCall)DenseMid/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_MidDrop_layer_call_and_return_conditional_losses_997292
MidDrop/PartitionedCall?
#DenseClass1/StatefulPartitionedCallStatefulPartitionedCall MidDrop/PartitionedCall:output:0denseclass1_99907denseclass1_99909*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_DenseClass1_layer_call_and_return_conditional_losses_997532%
#DenseClass1/StatefulPartitionedCall?
ClsDrop1/PartitionedCallPartitionedCall,DenseClass1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_ClsDrop1_layer_call_and_return_conditional_losses_997862
ClsDrop1/PartitionedCall?
#DenseClass2/StatefulPartitionedCallStatefulPartitionedCall!ClsDrop1/PartitionedCall:output:0denseclass2_99913denseclass2_99915*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_DenseClass2_layer_call_and_return_conditional_losses_998102%
#DenseClass2/StatefulPartitionedCall?
ClsDrop2/PartitionedCallPartitionedCall,DenseClass2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_ClsDrop2_layer_call_and_return_conditional_losses_998432
ClsDrop2/PartitionedCall?
LayOut/StatefulPartitionedCallStatefulPartitionedCall!ClsDrop2/PartitionedCall:output:0layout_99919layout_99921*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_LayOut_layer_call_and_return_conditional_losses_998672 
LayOut/StatefulPartitionedCall?
IdentityIdentity'LayOut/StatefulPartitionedCall:output:0$^DenseClass1/StatefulPartitionedCall$^DenseClass2/StatefulPartitionedCall!^DenseMid/StatefulPartitionedCall ^EnConv1/StatefulPartitionedCall ^EnConv2/StatefulPartitionedCall^LayOut/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????::::::::::::2J
#DenseClass1/StatefulPartitionedCall#DenseClass1/StatefulPartitionedCall2J
#DenseClass2/StatefulPartitionedCall#DenseClass2/StatefulPartitionedCall2D
 DenseMid/StatefulPartitionedCall DenseMid/StatefulPartitionedCall2B
EnConv1/StatefulPartitionedCallEnConv1/StatefulPartitionedCall2B
EnConv2/StatefulPartitionedCallEnConv2/StatefulPartitionedCall2@
LayOut/StatefulPartitionedCallLayOut/StatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameLayIn
?
`
B__inference_EnDrop1_layer_call_and_return_conditional_losses_99630

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
D__inference_ClsDrop2_layer_call_and_return_conditional_losses_100508

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
D__inference_DenseMid_layer_call_and_return_conditional_losses_100388

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
C__inference_MidDrop_layer_call_and_return_conditional_losses_100409

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
D__inference_ClsDrop1_layer_call_and_return_conditional_losses_100461

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
B__inference_LayFlat_layer_call_and_return_conditional_losses_99677

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
)__inference_ClsDrop2_layer_call_fn_100513

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_ClsDrop2_layer_call_and_return_conditional_losses_998382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?:
?
E__inference_sequential_layer_call_and_return_conditional_losses_99884	
layin
enconv1_99607
enconv1_99609
enconv2_99665
enconv2_99667
densemid_99707
densemid_99709
denseclass1_99764
denseclass1_99766
denseclass2_99821
denseclass2_99823
layout_99878
layout_99880
identity?? ClsDrop1/StatefulPartitionedCall? ClsDrop2/StatefulPartitionedCall?#DenseClass1/StatefulPartitionedCall?#DenseClass2/StatefulPartitionedCall? DenseMid/StatefulPartitionedCall?EnConv1/StatefulPartitionedCall?EnConv2/StatefulPartitionedCall?EnDrop1/StatefulPartitionedCall?LayOut/StatefulPartitionedCall?MidDrop/StatefulPartitionedCall?
EnConv1/StatefulPartitionedCallStatefulPartitionedCalllayinenconv1_99607enconv1_99609*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnConv1_layer_call_and_return_conditional_losses_995962!
EnConv1/StatefulPartitionedCall?
EnPool1/PartitionedCallPartitionedCall(EnConv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnPool1_layer_call_and_return_conditional_losses_995632
EnPool1/PartitionedCall?
EnDrop1/StatefulPartitionedCallStatefulPartitionedCall EnPool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnDrop1_layer_call_and_return_conditional_losses_996252!
EnDrop1/StatefulPartitionedCall?
EnConv2/StatefulPartitionedCallStatefulPartitionedCall(EnDrop1/StatefulPartitionedCall:output:0enconv2_99665enconv2_99667*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnConv2_layer_call_and_return_conditional_losses_996542!
EnConv2/StatefulPartitionedCall?
EnPool2/PartitionedCallPartitionedCall(EnConv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnPool2_layer_call_and_return_conditional_losses_995752
EnPool2/PartitionedCall?
LayFlat/PartitionedCallPartitionedCall EnPool2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_LayFlat_layer_call_and_return_conditional_losses_996772
LayFlat/PartitionedCall?
 DenseMid/StatefulPartitionedCallStatefulPartitionedCall LayFlat/PartitionedCall:output:0densemid_99707densemid_99709*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_DenseMid_layer_call_and_return_conditional_losses_996962"
 DenseMid/StatefulPartitionedCall?
MidDrop/StatefulPartitionedCallStatefulPartitionedCall)DenseMid/StatefulPartitionedCall:output:0 ^EnDrop1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_MidDrop_layer_call_and_return_conditional_losses_997242!
MidDrop/StatefulPartitionedCall?
#DenseClass1/StatefulPartitionedCallStatefulPartitionedCall(MidDrop/StatefulPartitionedCall:output:0denseclass1_99764denseclass1_99766*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_DenseClass1_layer_call_and_return_conditional_losses_997532%
#DenseClass1/StatefulPartitionedCall?
 ClsDrop1/StatefulPartitionedCallStatefulPartitionedCall,DenseClass1/StatefulPartitionedCall:output:0 ^MidDrop/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_ClsDrop1_layer_call_and_return_conditional_losses_997812"
 ClsDrop1/StatefulPartitionedCall?
#DenseClass2/StatefulPartitionedCallStatefulPartitionedCall)ClsDrop1/StatefulPartitionedCall:output:0denseclass2_99821denseclass2_99823*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_DenseClass2_layer_call_and_return_conditional_losses_998102%
#DenseClass2/StatefulPartitionedCall?
 ClsDrop2/StatefulPartitionedCallStatefulPartitionedCall,DenseClass2/StatefulPartitionedCall:output:0!^ClsDrop1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_ClsDrop2_layer_call_and_return_conditional_losses_998382"
 ClsDrop2/StatefulPartitionedCall?
LayOut/StatefulPartitionedCallStatefulPartitionedCall)ClsDrop2/StatefulPartitionedCall:output:0layout_99878layout_99880*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_LayOut_layer_call_and_return_conditional_losses_998672 
LayOut/StatefulPartitionedCall?
IdentityIdentity'LayOut/StatefulPartitionedCall:output:0!^ClsDrop1/StatefulPartitionedCall!^ClsDrop2/StatefulPartitionedCall$^DenseClass1/StatefulPartitionedCall$^DenseClass2/StatefulPartitionedCall!^DenseMid/StatefulPartitionedCall ^EnConv1/StatefulPartitionedCall ^EnConv2/StatefulPartitionedCall ^EnDrop1/StatefulPartitionedCall^LayOut/StatefulPartitionedCall ^MidDrop/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????::::::::::::2D
 ClsDrop1/StatefulPartitionedCall ClsDrop1/StatefulPartitionedCall2D
 ClsDrop2/StatefulPartitionedCall ClsDrop2/StatefulPartitionedCall2J
#DenseClass1/StatefulPartitionedCall#DenseClass1/StatefulPartitionedCall2J
#DenseClass2/StatefulPartitionedCall#DenseClass2/StatefulPartitionedCall2D
 DenseMid/StatefulPartitionedCall DenseMid/StatefulPartitionedCall2B
EnConv1/StatefulPartitionedCallEnConv1/StatefulPartitionedCall2B
EnConv2/StatefulPartitionedCallEnConv2/StatefulPartitionedCall2B
EnDrop1/StatefulPartitionedCallEnDrop1/StatefulPartitionedCall2@
LayOut/StatefulPartitionedCallLayOut/StatefulPartitionedCall2B
MidDrop/StatefulPartitionedCallMidDrop/StatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameLayIn
?
?
,__inference_DenseClass2_layer_call_fn_100491

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_DenseClass2_layer_call_and_return_conditional_losses_998102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
D
(__inference_LayFlat_layer_call_fn_100377

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_LayFlat_layer_call_and_return_conditional_losses_996772
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
C__inference_ClsDrop1_layer_call_and_return_conditional_losses_99786

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
$__inference_signature_wrapper_100105	
layin
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllayinunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_995572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameLayIn
?

?
C__inference_EnConv1_layer_call_and_return_conditional_losses_100310

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
D__inference_ClsDrop2_layer_call_and_return_conditional_losses_100503

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
C
'__inference_EnPool1_layer_call_fn_99569

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnPool1_layer_call_and_return_conditional_losses_995632
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
E
)__inference_ClsDrop1_layer_call_fn_100471

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_ClsDrop1_layer_call_and_return_conditional_losses_997862
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
B__inference_EnPool1_layer_call_and_return_conditional_losses_99563

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
`
B__inference_MidDrop_layer_call_and_return_conditional_losses_99729

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
C__inference_EnDrop1_layer_call_and_return_conditional_losses_100331

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?]
?
__inference__traced_save_100696
file_prefix-
)savev2_enconv1_kernel_read_readvariableop+
'savev2_enconv1_bias_read_readvariableop-
)savev2_enconv2_kernel_read_readvariableop+
'savev2_enconv2_bias_read_readvariableop.
*savev2_densemid_kernel_read_readvariableop,
(savev2_densemid_bias_read_readvariableop1
-savev2_denseclass1_kernel_read_readvariableop/
+savev2_denseclass1_bias_read_readvariableop1
-savev2_denseclass2_kernel_read_readvariableop/
+savev2_denseclass2_bias_read_readvariableop,
(savev2_layout_kernel_read_readvariableop*
&savev2_layout_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_enconv1_kernel_m_read_readvariableop2
.savev2_adam_enconv1_bias_m_read_readvariableop4
0savev2_adam_enconv2_kernel_m_read_readvariableop2
.savev2_adam_enconv2_bias_m_read_readvariableop5
1savev2_adam_densemid_kernel_m_read_readvariableop3
/savev2_adam_densemid_bias_m_read_readvariableop8
4savev2_adam_denseclass1_kernel_m_read_readvariableop6
2savev2_adam_denseclass1_bias_m_read_readvariableop8
4savev2_adam_denseclass2_kernel_m_read_readvariableop6
2savev2_adam_denseclass2_bias_m_read_readvariableop3
/savev2_adam_layout_kernel_m_read_readvariableop1
-savev2_adam_layout_bias_m_read_readvariableop4
0savev2_adam_enconv1_kernel_v_read_readvariableop2
.savev2_adam_enconv1_bias_v_read_readvariableop4
0savev2_adam_enconv2_kernel_v_read_readvariableop2
.savev2_adam_enconv2_bias_v_read_readvariableop5
1savev2_adam_densemid_kernel_v_read_readvariableop3
/savev2_adam_densemid_bias_v_read_readvariableop8
4savev2_adam_denseclass1_kernel_v_read_readvariableop6
2savev2_adam_denseclass1_bias_v_read_readvariableop8
4savev2_adam_denseclass2_kernel_v_read_readvariableop6
2savev2_adam_denseclass2_bias_v_read_readvariableop3
/savev2_adam_layout_kernel_v_read_readvariableop1
-savev2_adam_layout_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*?
value?B?.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_enconv1_kernel_read_readvariableop'savev2_enconv1_bias_read_readvariableop)savev2_enconv2_kernel_read_readvariableop'savev2_enconv2_bias_read_readvariableop*savev2_densemid_kernel_read_readvariableop(savev2_densemid_bias_read_readvariableop-savev2_denseclass1_kernel_read_readvariableop+savev2_denseclass1_bias_read_readvariableop-savev2_denseclass2_kernel_read_readvariableop+savev2_denseclass2_bias_read_readvariableop(savev2_layout_kernel_read_readvariableop&savev2_layout_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_enconv1_kernel_m_read_readvariableop.savev2_adam_enconv1_bias_m_read_readvariableop0savev2_adam_enconv2_kernel_m_read_readvariableop.savev2_adam_enconv2_bias_m_read_readvariableop1savev2_adam_densemid_kernel_m_read_readvariableop/savev2_adam_densemid_bias_m_read_readvariableop4savev2_adam_denseclass1_kernel_m_read_readvariableop2savev2_adam_denseclass1_bias_m_read_readvariableop4savev2_adam_denseclass2_kernel_m_read_readvariableop2savev2_adam_denseclass2_bias_m_read_readvariableop/savev2_adam_layout_kernel_m_read_readvariableop-savev2_adam_layout_bias_m_read_readvariableop0savev2_adam_enconv1_kernel_v_read_readvariableop.savev2_adam_enconv1_bias_v_read_readvariableop0savev2_adam_enconv2_kernel_v_read_readvariableop.savev2_adam_enconv2_bias_v_read_readvariableop1savev2_adam_densemid_kernel_v_read_readvariableop/savev2_adam_densemid_bias_v_read_readvariableop4savev2_adam_denseclass1_kernel_v_read_readvariableop2savev2_adam_denseclass1_bias_v_read_readvariableop4savev2_adam_denseclass2_kernel_v_read_readvariableop2savev2_adam_denseclass2_bias_v_read_readvariableop/savev2_adam_layout_kernel_v_read_readvariableop-savev2_adam_layout_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::::
??:?:
??:?:	?@:@:@
:
: : : : : : : : : :::::
??:?:
??:?:	?@:@:@
:
:::::
??:?:
??:?:	?@:@:@
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%	!

_output_shapes
:	?@: 


_output_shapes
:@:$ 

_output_shapes

:@
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$  

_output_shapes

:@
: !

_output_shapes
:
:,"(
&
_output_shapes
:: #

_output_shapes
::,$(
&
_output_shapes
:: %

_output_shapes
::&&"
 
_output_shapes
:
??:!'

_output_shapes	
:?:&("
 
_output_shapes
:
??:!)

_output_shapes	
:?:%*!

_output_shapes
:	?@: +

_output_shapes
:@:$, 

_output_shapes

:@
: -

_output_shapes
:
:.

_output_shapes
: 
?
a
C__inference_ClsDrop2_layer_call_and_return_conditional_losses_99843

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
D
(__inference_MidDrop_layer_call_fn_100424

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_MidDrop_layer_call_and_return_conditional_losses_997292
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
)__inference_ClsDrop1_layer_call_fn_100466

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_ClsDrop1_layer_call_and_return_conditional_losses_997812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?4
?
F__inference_sequential_layer_call_and_return_conditional_losses_100039

inputs
enconv1_100001
enconv1_100003
enconv2_100008
enconv2_100010
densemid_100015
densemid_100017
denseclass1_100021
denseclass1_100023
denseclass2_100027
denseclass2_100029
layout_100033
layout_100035
identity??#DenseClass1/StatefulPartitionedCall?#DenseClass2/StatefulPartitionedCall? DenseMid/StatefulPartitionedCall?EnConv1/StatefulPartitionedCall?EnConv2/StatefulPartitionedCall?LayOut/StatefulPartitionedCall?
EnConv1/StatefulPartitionedCallStatefulPartitionedCallinputsenconv1_100001enconv1_100003*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnConv1_layer_call_and_return_conditional_losses_995962!
EnConv1/StatefulPartitionedCall?
EnPool1/PartitionedCallPartitionedCall(EnConv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnPool1_layer_call_and_return_conditional_losses_995632
EnPool1/PartitionedCall?
EnDrop1/PartitionedCallPartitionedCall EnPool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnDrop1_layer_call_and_return_conditional_losses_996302
EnDrop1/PartitionedCall?
EnConv2/StatefulPartitionedCallStatefulPartitionedCall EnDrop1/PartitionedCall:output:0enconv2_100008enconv2_100010*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnConv2_layer_call_and_return_conditional_losses_996542!
EnConv2/StatefulPartitionedCall?
EnPool2/PartitionedCallPartitionedCall(EnConv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnPool2_layer_call_and_return_conditional_losses_995752
EnPool2/PartitionedCall?
LayFlat/PartitionedCallPartitionedCall EnPool2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_LayFlat_layer_call_and_return_conditional_losses_996772
LayFlat/PartitionedCall?
 DenseMid/StatefulPartitionedCallStatefulPartitionedCall LayFlat/PartitionedCall:output:0densemid_100015densemid_100017*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_DenseMid_layer_call_and_return_conditional_losses_996962"
 DenseMid/StatefulPartitionedCall?
MidDrop/PartitionedCallPartitionedCall)DenseMid/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_MidDrop_layer_call_and_return_conditional_losses_997292
MidDrop/PartitionedCall?
#DenseClass1/StatefulPartitionedCallStatefulPartitionedCall MidDrop/PartitionedCall:output:0denseclass1_100021denseclass1_100023*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_DenseClass1_layer_call_and_return_conditional_losses_997532%
#DenseClass1/StatefulPartitionedCall?
ClsDrop1/PartitionedCallPartitionedCall,DenseClass1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_ClsDrop1_layer_call_and_return_conditional_losses_997862
ClsDrop1/PartitionedCall?
#DenseClass2/StatefulPartitionedCallStatefulPartitionedCall!ClsDrop1/PartitionedCall:output:0denseclass2_100027denseclass2_100029*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_DenseClass2_layer_call_and_return_conditional_losses_998102%
#DenseClass2/StatefulPartitionedCall?
ClsDrop2/PartitionedCallPartitionedCall,DenseClass2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_ClsDrop2_layer_call_and_return_conditional_losses_998432
ClsDrop2/PartitionedCall?
LayOut/StatefulPartitionedCallStatefulPartitionedCall!ClsDrop2/PartitionedCall:output:0layout_100033layout_100035*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_LayOut_layer_call_and_return_conditional_losses_998672 
LayOut/StatefulPartitionedCall?
IdentityIdentity'LayOut/StatefulPartitionedCall:output:0$^DenseClass1/StatefulPartitionedCall$^DenseClass2/StatefulPartitionedCall!^DenseMid/StatefulPartitionedCall ^EnConv1/StatefulPartitionedCall ^EnConv2/StatefulPartitionedCall^LayOut/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????::::::::::::2J
#DenseClass1/StatefulPartitionedCall#DenseClass1/StatefulPartitionedCall2J
#DenseClass2/StatefulPartitionedCall#DenseClass2/StatefulPartitionedCall2D
 DenseMid/StatefulPartitionedCall DenseMid/StatefulPartitionedCall2B
EnConv1/StatefulPartitionedCallEnConv1/StatefulPartitionedCall2B
EnConv2/StatefulPartitionedCallEnConv2/StatefulPartitionedCall2@
LayOut/StatefulPartitionedCallLayOut/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?h
?
F__inference_sequential_layer_call_and_return_conditional_losses_100187

inputs*
&enconv1_conv2d_readvariableop_resource+
'enconv1_biasadd_readvariableop_resource*
&enconv2_conv2d_readvariableop_resource+
'enconv2_biasadd_readvariableop_resource+
'densemid_matmul_readvariableop_resource,
(densemid_biasadd_readvariableop_resource.
*denseclass1_matmul_readvariableop_resource/
+denseclass1_biasadd_readvariableop_resource.
*denseclass2_matmul_readvariableop_resource/
+denseclass2_biasadd_readvariableop_resource)
%layout_matmul_readvariableop_resource*
&layout_biasadd_readvariableop_resource
identity??"DenseClass1/BiasAdd/ReadVariableOp?!DenseClass1/MatMul/ReadVariableOp?"DenseClass2/BiasAdd/ReadVariableOp?!DenseClass2/MatMul/ReadVariableOp?DenseMid/BiasAdd/ReadVariableOp?DenseMid/MatMul/ReadVariableOp?EnConv1/BiasAdd/ReadVariableOp?EnConv1/Conv2D/ReadVariableOp?EnConv2/BiasAdd/ReadVariableOp?EnConv2/Conv2D/ReadVariableOp?LayOut/BiasAdd/ReadVariableOp?LayOut/MatMul/ReadVariableOp?
EnConv1/Conv2D/ReadVariableOpReadVariableOp&enconv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
EnConv1/Conv2D/ReadVariableOp?
EnConv1/Conv2DConv2Dinputs%EnConv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
EnConv1/Conv2D?
EnConv1/BiasAdd/ReadVariableOpReadVariableOp'enconv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
EnConv1/BiasAdd/ReadVariableOp?
EnConv1/BiasAddBiasAddEnConv1/Conv2D:output:0&EnConv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
EnConv1/BiasAddx
EnConv1/ReluReluEnConv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
EnConv1/Relu?
EnPool1/MaxPoolMaxPoolEnConv1/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingSAME*
strides
2
EnPool1/MaxPools
EnDrop1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
EnDrop1/dropout/Const?
EnDrop1/dropout/MulMulEnPool1/MaxPool:output:0EnDrop1/dropout/Const:output:0*
T0*/
_output_shapes
:?????????2
EnDrop1/dropout/Mulv
EnDrop1/dropout/ShapeShapeEnPool1/MaxPool:output:0*
T0*
_output_shapes
:2
EnDrop1/dropout/Shape?
,EnDrop1/dropout/random_uniform/RandomUniformRandomUniformEnDrop1/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype02.
,EnDrop1/dropout/random_uniform/RandomUniform?
EnDrop1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
EnDrop1/dropout/GreaterEqual/y?
EnDrop1/dropout/GreaterEqualGreaterEqual5EnDrop1/dropout/random_uniform/RandomUniform:output:0'EnDrop1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2
EnDrop1/dropout/GreaterEqual?
EnDrop1/dropout/CastCast EnDrop1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2
EnDrop1/dropout/Cast?
EnDrop1/dropout/Mul_1MulEnDrop1/dropout/Mul:z:0EnDrop1/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2
EnDrop1/dropout/Mul_1?
EnConv2/Conv2D/ReadVariableOpReadVariableOp&enconv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
EnConv2/Conv2D/ReadVariableOp?
EnConv2/Conv2DConv2DEnDrop1/dropout/Mul_1:z:0%EnConv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
EnConv2/Conv2D?
EnConv2/BiasAdd/ReadVariableOpReadVariableOp'enconv2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
EnConv2/BiasAdd/ReadVariableOp?
EnConv2/BiasAddBiasAddEnConv2/Conv2D:output:0&EnConv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
EnConv2/BiasAddx
EnConv2/ReluReluEnConv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
EnConv2/Relu?
EnPool2/MaxPoolMaxPoolEnConv2/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingSAME*
strides
2
EnPool2/MaxPoolo
LayFlat/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
LayFlat/Const?
LayFlat/ReshapeReshapeEnPool2/MaxPool:output:0LayFlat/Const:output:0*
T0*(
_output_shapes
:??????????2
LayFlat/Reshape?
DenseMid/MatMul/ReadVariableOpReadVariableOp'densemid_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
DenseMid/MatMul/ReadVariableOp?
DenseMid/MatMulMatMulLayFlat/Reshape:output:0&DenseMid/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
DenseMid/MatMul?
DenseMid/BiasAdd/ReadVariableOpReadVariableOp(densemid_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
DenseMid/BiasAdd/ReadVariableOp?
DenseMid/BiasAddBiasAddDenseMid/MatMul:product:0'DenseMid/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
DenseMid/BiasAddt
DenseMid/ReluReluDenseMid/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
DenseMid/Relus
MidDrop/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
MidDrop/dropout/Const?
MidDrop/dropout/MulMulDenseMid/Relu:activations:0MidDrop/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
MidDrop/dropout/Muly
MidDrop/dropout/ShapeShapeDenseMid/Relu:activations:0*
T0*
_output_shapes
:2
MidDrop/dropout/Shape?
,MidDrop/dropout/random_uniform/RandomUniformRandomUniformMidDrop/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02.
,MidDrop/dropout/random_uniform/RandomUniform?
MidDrop/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
MidDrop/dropout/GreaterEqual/y?
MidDrop/dropout/GreaterEqualGreaterEqual5MidDrop/dropout/random_uniform/RandomUniform:output:0'MidDrop/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
MidDrop/dropout/GreaterEqual?
MidDrop/dropout/CastCast MidDrop/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
MidDrop/dropout/Cast?
MidDrop/dropout/Mul_1MulMidDrop/dropout/Mul:z:0MidDrop/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
MidDrop/dropout/Mul_1?
!DenseClass1/MatMul/ReadVariableOpReadVariableOp*denseclass1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!DenseClass1/MatMul/ReadVariableOp?
DenseClass1/MatMulMatMulMidDrop/dropout/Mul_1:z:0)DenseClass1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
DenseClass1/MatMul?
"DenseClass1/BiasAdd/ReadVariableOpReadVariableOp+denseclass1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"DenseClass1/BiasAdd/ReadVariableOp?
DenseClass1/BiasAddBiasAddDenseClass1/MatMul:product:0*DenseClass1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
DenseClass1/BiasAdd}
DenseClass1/ReluReluDenseClass1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
DenseClass1/Reluu
ClsDrop1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ClsDrop1/dropout/Const?
ClsDrop1/dropout/MulMulDenseClass1/Relu:activations:0ClsDrop1/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
ClsDrop1/dropout/Mul~
ClsDrop1/dropout/ShapeShapeDenseClass1/Relu:activations:0*
T0*
_output_shapes
:2
ClsDrop1/dropout/Shape?
-ClsDrop1/dropout/random_uniform/RandomUniformRandomUniformClsDrop1/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02/
-ClsDrop1/dropout/random_uniform/RandomUniform?
ClsDrop1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2!
ClsDrop1/dropout/GreaterEqual/y?
ClsDrop1/dropout/GreaterEqualGreaterEqual6ClsDrop1/dropout/random_uniform/RandomUniform:output:0(ClsDrop1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
ClsDrop1/dropout/GreaterEqual?
ClsDrop1/dropout/CastCast!ClsDrop1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
ClsDrop1/dropout/Cast?
ClsDrop1/dropout/Mul_1MulClsDrop1/dropout/Mul:z:0ClsDrop1/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
ClsDrop1/dropout/Mul_1?
!DenseClass2/MatMul/ReadVariableOpReadVariableOp*denseclass2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02#
!DenseClass2/MatMul/ReadVariableOp?
DenseClass2/MatMulMatMulClsDrop1/dropout/Mul_1:z:0)DenseClass2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
DenseClass2/MatMul?
"DenseClass2/BiasAdd/ReadVariableOpReadVariableOp+denseclass2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02$
"DenseClass2/BiasAdd/ReadVariableOp?
DenseClass2/BiasAddBiasAddDenseClass2/MatMul:product:0*DenseClass2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
DenseClass2/BiasAdd|
DenseClass2/ReluReluDenseClass2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
DenseClass2/Reluu
ClsDrop2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ClsDrop2/dropout/Const?
ClsDrop2/dropout/MulMulDenseClass2/Relu:activations:0ClsDrop2/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
ClsDrop2/dropout/Mul~
ClsDrop2/dropout/ShapeShapeDenseClass2/Relu:activations:0*
T0*
_output_shapes
:2
ClsDrop2/dropout/Shape?
-ClsDrop2/dropout/random_uniform/RandomUniformRandomUniformClsDrop2/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02/
-ClsDrop2/dropout/random_uniform/RandomUniform?
ClsDrop2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2!
ClsDrop2/dropout/GreaterEqual/y?
ClsDrop2/dropout/GreaterEqualGreaterEqual6ClsDrop2/dropout/random_uniform/RandomUniform:output:0(ClsDrop2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
ClsDrop2/dropout/GreaterEqual?
ClsDrop2/dropout/CastCast!ClsDrop2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
ClsDrop2/dropout/Cast?
ClsDrop2/dropout/Mul_1MulClsDrop2/dropout/Mul:z:0ClsDrop2/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
ClsDrop2/dropout/Mul_1?
LayOut/MatMul/ReadVariableOpReadVariableOp%layout_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
LayOut/MatMul/ReadVariableOp?
LayOut/MatMulMatMulClsDrop2/dropout/Mul_1:z:0$LayOut/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
LayOut/MatMul?
LayOut/BiasAdd/ReadVariableOpReadVariableOp&layout_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
LayOut/BiasAdd/ReadVariableOp?
LayOut/BiasAddBiasAddLayOut/MatMul:product:0%LayOut/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
LayOut/BiasAddv
LayOut/SigmoidSigmoidLayOut/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
LayOut/Sigmoid?
IdentityIdentityLayOut/Sigmoid:y:0#^DenseClass1/BiasAdd/ReadVariableOp"^DenseClass1/MatMul/ReadVariableOp#^DenseClass2/BiasAdd/ReadVariableOp"^DenseClass2/MatMul/ReadVariableOp ^DenseMid/BiasAdd/ReadVariableOp^DenseMid/MatMul/ReadVariableOp^EnConv1/BiasAdd/ReadVariableOp^EnConv1/Conv2D/ReadVariableOp^EnConv2/BiasAdd/ReadVariableOp^EnConv2/Conv2D/ReadVariableOp^LayOut/BiasAdd/ReadVariableOp^LayOut/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????::::::::::::2H
"DenseClass1/BiasAdd/ReadVariableOp"DenseClass1/BiasAdd/ReadVariableOp2F
!DenseClass1/MatMul/ReadVariableOp!DenseClass1/MatMul/ReadVariableOp2H
"DenseClass2/BiasAdd/ReadVariableOp"DenseClass2/BiasAdd/ReadVariableOp2F
!DenseClass2/MatMul/ReadVariableOp!DenseClass2/MatMul/ReadVariableOp2B
DenseMid/BiasAdd/ReadVariableOpDenseMid/BiasAdd/ReadVariableOp2@
DenseMid/MatMul/ReadVariableOpDenseMid/MatMul/ReadVariableOp2@
EnConv1/BiasAdd/ReadVariableOpEnConv1/BiasAdd/ReadVariableOp2>
EnConv1/Conv2D/ReadVariableOpEnConv1/Conv2D/ReadVariableOp2@
EnConv2/BiasAdd/ReadVariableOpEnConv2/BiasAdd/ReadVariableOp2>
EnConv2/Conv2D/ReadVariableOpEnConv2/Conv2D/ReadVariableOp2>
LayOut/BiasAdd/ReadVariableOpLayOut/BiasAdd/ReadVariableOp2<
LayOut/MatMul/ReadVariableOpLayOut/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

b
C__inference_ClsDrop2_layer_call_and_return_conditional_losses_99838

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
a
(__inference_EnDrop1_layer_call_fn_100341

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnDrop1_layer_call_and_return_conditional_losses_996252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
C__inference_MidDrop_layer_call_and_return_conditional_losses_100414

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
D__inference_ClsDrop1_layer_call_and_return_conditional_losses_100456

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
B__inference_EnConv1_layer_call_and_return_conditional_losses_99596

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
E
)__inference_ClsDrop2_layer_call_fn_100518

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_ClsDrop2_layer_call_and_return_conditional_losses_998432
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
D
(__inference_EnDrop1_layer_call_fn_100346

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnDrop1_layer_call_and_return_conditional_losses_996302
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
(__inference_MidDrop_layer_call_fn_100419

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_MidDrop_layer_call_and_return_conditional_losses_997242
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
B__inference_LayOut_layer_call_and_return_conditional_losses_100529

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
a
B__inference_EnDrop1_layer_call_and_return_conditional_losses_99625

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
C__inference_EnConv2_layer_call_and_return_conditional_losses_100357

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
G__inference_DenseClass2_layer_call_and_return_conditional_losses_100482

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
A__inference_LayOut_layer_call_and_return_conditional_losses_99867

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
,__inference_DenseClass1_layer_call_fn_100444

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_DenseClass1_layer_call_and_return_conditional_losses_997532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?C
?
F__inference_sequential_layer_call_and_return_conditional_losses_100241

inputs*
&enconv1_conv2d_readvariableop_resource+
'enconv1_biasadd_readvariableop_resource*
&enconv2_conv2d_readvariableop_resource+
'enconv2_biasadd_readvariableop_resource+
'densemid_matmul_readvariableop_resource,
(densemid_biasadd_readvariableop_resource.
*denseclass1_matmul_readvariableop_resource/
+denseclass1_biasadd_readvariableop_resource.
*denseclass2_matmul_readvariableop_resource/
+denseclass2_biasadd_readvariableop_resource)
%layout_matmul_readvariableop_resource*
&layout_biasadd_readvariableop_resource
identity??"DenseClass1/BiasAdd/ReadVariableOp?!DenseClass1/MatMul/ReadVariableOp?"DenseClass2/BiasAdd/ReadVariableOp?!DenseClass2/MatMul/ReadVariableOp?DenseMid/BiasAdd/ReadVariableOp?DenseMid/MatMul/ReadVariableOp?EnConv1/BiasAdd/ReadVariableOp?EnConv1/Conv2D/ReadVariableOp?EnConv2/BiasAdd/ReadVariableOp?EnConv2/Conv2D/ReadVariableOp?LayOut/BiasAdd/ReadVariableOp?LayOut/MatMul/ReadVariableOp?
EnConv1/Conv2D/ReadVariableOpReadVariableOp&enconv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
EnConv1/Conv2D/ReadVariableOp?
EnConv1/Conv2DConv2Dinputs%EnConv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
EnConv1/Conv2D?
EnConv1/BiasAdd/ReadVariableOpReadVariableOp'enconv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
EnConv1/BiasAdd/ReadVariableOp?
EnConv1/BiasAddBiasAddEnConv1/Conv2D:output:0&EnConv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
EnConv1/BiasAddx
EnConv1/ReluReluEnConv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
EnConv1/Relu?
EnPool1/MaxPoolMaxPoolEnConv1/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingSAME*
strides
2
EnPool1/MaxPool?
EnDrop1/IdentityIdentityEnPool1/MaxPool:output:0*
T0*/
_output_shapes
:?????????2
EnDrop1/Identity?
EnConv2/Conv2D/ReadVariableOpReadVariableOp&enconv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
EnConv2/Conv2D/ReadVariableOp?
EnConv2/Conv2DConv2DEnDrop1/Identity:output:0%EnConv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
EnConv2/Conv2D?
EnConv2/BiasAdd/ReadVariableOpReadVariableOp'enconv2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
EnConv2/BiasAdd/ReadVariableOp?
EnConv2/BiasAddBiasAddEnConv2/Conv2D:output:0&EnConv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
EnConv2/BiasAddx
EnConv2/ReluReluEnConv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
EnConv2/Relu?
EnPool2/MaxPoolMaxPoolEnConv2/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingSAME*
strides
2
EnPool2/MaxPoolo
LayFlat/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
LayFlat/Const?
LayFlat/ReshapeReshapeEnPool2/MaxPool:output:0LayFlat/Const:output:0*
T0*(
_output_shapes
:??????????2
LayFlat/Reshape?
DenseMid/MatMul/ReadVariableOpReadVariableOp'densemid_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
DenseMid/MatMul/ReadVariableOp?
DenseMid/MatMulMatMulLayFlat/Reshape:output:0&DenseMid/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
DenseMid/MatMul?
DenseMid/BiasAdd/ReadVariableOpReadVariableOp(densemid_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
DenseMid/BiasAdd/ReadVariableOp?
DenseMid/BiasAddBiasAddDenseMid/MatMul:product:0'DenseMid/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
DenseMid/BiasAddt
DenseMid/ReluReluDenseMid/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
DenseMid/Relu?
MidDrop/IdentityIdentityDenseMid/Relu:activations:0*
T0*(
_output_shapes
:??????????2
MidDrop/Identity?
!DenseClass1/MatMul/ReadVariableOpReadVariableOp*denseclass1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!DenseClass1/MatMul/ReadVariableOp?
DenseClass1/MatMulMatMulMidDrop/Identity:output:0)DenseClass1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
DenseClass1/MatMul?
"DenseClass1/BiasAdd/ReadVariableOpReadVariableOp+denseclass1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"DenseClass1/BiasAdd/ReadVariableOp?
DenseClass1/BiasAddBiasAddDenseClass1/MatMul:product:0*DenseClass1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
DenseClass1/BiasAdd}
DenseClass1/ReluReluDenseClass1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
DenseClass1/Relu?
ClsDrop1/IdentityIdentityDenseClass1/Relu:activations:0*
T0*(
_output_shapes
:??????????2
ClsDrop1/Identity?
!DenseClass2/MatMul/ReadVariableOpReadVariableOp*denseclass2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02#
!DenseClass2/MatMul/ReadVariableOp?
DenseClass2/MatMulMatMulClsDrop1/Identity:output:0)DenseClass2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
DenseClass2/MatMul?
"DenseClass2/BiasAdd/ReadVariableOpReadVariableOp+denseclass2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02$
"DenseClass2/BiasAdd/ReadVariableOp?
DenseClass2/BiasAddBiasAddDenseClass2/MatMul:product:0*DenseClass2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
DenseClass2/BiasAdd|
DenseClass2/ReluReluDenseClass2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
DenseClass2/Relu?
ClsDrop2/IdentityIdentityDenseClass2/Relu:activations:0*
T0*'
_output_shapes
:?????????@2
ClsDrop2/Identity?
LayOut/MatMul/ReadVariableOpReadVariableOp%layout_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
LayOut/MatMul/ReadVariableOp?
LayOut/MatMulMatMulClsDrop2/Identity:output:0$LayOut/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
LayOut/MatMul?
LayOut/BiasAdd/ReadVariableOpReadVariableOp&layout_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
LayOut/BiasAdd/ReadVariableOp?
LayOut/BiasAddBiasAddLayOut/MatMul:product:0%LayOut/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
LayOut/BiasAddv
LayOut/SigmoidSigmoidLayOut/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
LayOut/Sigmoid?
IdentityIdentityLayOut/Sigmoid:y:0#^DenseClass1/BiasAdd/ReadVariableOp"^DenseClass1/MatMul/ReadVariableOp#^DenseClass2/BiasAdd/ReadVariableOp"^DenseClass2/MatMul/ReadVariableOp ^DenseMid/BiasAdd/ReadVariableOp^DenseMid/MatMul/ReadVariableOp^EnConv1/BiasAdd/ReadVariableOp^EnConv1/Conv2D/ReadVariableOp^EnConv2/BiasAdd/ReadVariableOp^EnConv2/Conv2D/ReadVariableOp^LayOut/BiasAdd/ReadVariableOp^LayOut/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????::::::::::::2H
"DenseClass1/BiasAdd/ReadVariableOp"DenseClass1/BiasAdd/ReadVariableOp2F
!DenseClass1/MatMul/ReadVariableOp!DenseClass1/MatMul/ReadVariableOp2H
"DenseClass2/BiasAdd/ReadVariableOp"DenseClass2/BiasAdd/ReadVariableOp2F
!DenseClass2/MatMul/ReadVariableOp!DenseClass2/MatMul/ReadVariableOp2B
DenseMid/BiasAdd/ReadVariableOpDenseMid/BiasAdd/ReadVariableOp2@
DenseMid/MatMul/ReadVariableOpDenseMid/MatMul/ReadVariableOp2@
EnConv1/BiasAdd/ReadVariableOpEnConv1/BiasAdd/ReadVariableOp2>
EnConv1/Conv2D/ReadVariableOpEnConv1/Conv2D/ReadVariableOp2@
EnConv2/BiasAdd/ReadVariableOpEnConv2/BiasAdd/ReadVariableOp2>
EnConv2/Conv2D/ReadVariableOpEnConv2/Conv2D/ReadVariableOp2>
LayOut/BiasAdd/ReadVariableOpLayOut/BiasAdd/ReadVariableOp2<
LayOut/MatMul/ReadVariableOpLayOut/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
~
)__inference_DenseMid_layer_call_fn_100397

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_DenseMid_layer_call_and_return_conditional_losses_996962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
G__inference_DenseClass1_layer_call_and_return_conditional_losses_100435

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?S
?

 __inference__wrapped_model_99557	
layin5
1sequential_enconv1_conv2d_readvariableop_resource6
2sequential_enconv1_biasadd_readvariableop_resource5
1sequential_enconv2_conv2d_readvariableop_resource6
2sequential_enconv2_biasadd_readvariableop_resource6
2sequential_densemid_matmul_readvariableop_resource7
3sequential_densemid_biasadd_readvariableop_resource9
5sequential_denseclass1_matmul_readvariableop_resource:
6sequential_denseclass1_biasadd_readvariableop_resource9
5sequential_denseclass2_matmul_readvariableop_resource:
6sequential_denseclass2_biasadd_readvariableop_resource4
0sequential_layout_matmul_readvariableop_resource5
1sequential_layout_biasadd_readvariableop_resource
identity??-sequential/DenseClass1/BiasAdd/ReadVariableOp?,sequential/DenseClass1/MatMul/ReadVariableOp?-sequential/DenseClass2/BiasAdd/ReadVariableOp?,sequential/DenseClass2/MatMul/ReadVariableOp?*sequential/DenseMid/BiasAdd/ReadVariableOp?)sequential/DenseMid/MatMul/ReadVariableOp?)sequential/EnConv1/BiasAdd/ReadVariableOp?(sequential/EnConv1/Conv2D/ReadVariableOp?)sequential/EnConv2/BiasAdd/ReadVariableOp?(sequential/EnConv2/Conv2D/ReadVariableOp?(sequential/LayOut/BiasAdd/ReadVariableOp?'sequential/LayOut/MatMul/ReadVariableOp?
(sequential/EnConv1/Conv2D/ReadVariableOpReadVariableOp1sequential_enconv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(sequential/EnConv1/Conv2D/ReadVariableOp?
sequential/EnConv1/Conv2DConv2Dlayin0sequential/EnConv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
sequential/EnConv1/Conv2D?
)sequential/EnConv1/BiasAdd/ReadVariableOpReadVariableOp2sequential_enconv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/EnConv1/BiasAdd/ReadVariableOp?
sequential/EnConv1/BiasAddBiasAdd"sequential/EnConv1/Conv2D:output:01sequential/EnConv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
sequential/EnConv1/BiasAdd?
sequential/EnConv1/ReluRelu#sequential/EnConv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
sequential/EnConv1/Relu?
sequential/EnPool1/MaxPoolMaxPool%sequential/EnConv1/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingSAME*
strides
2
sequential/EnPool1/MaxPool?
sequential/EnDrop1/IdentityIdentity#sequential/EnPool1/MaxPool:output:0*
T0*/
_output_shapes
:?????????2
sequential/EnDrop1/Identity?
(sequential/EnConv2/Conv2D/ReadVariableOpReadVariableOp1sequential_enconv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(sequential/EnConv2/Conv2D/ReadVariableOp?
sequential/EnConv2/Conv2DConv2D$sequential/EnDrop1/Identity:output:00sequential/EnConv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
sequential/EnConv2/Conv2D?
)sequential/EnConv2/BiasAdd/ReadVariableOpReadVariableOp2sequential_enconv2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/EnConv2/BiasAdd/ReadVariableOp?
sequential/EnConv2/BiasAddBiasAdd"sequential/EnConv2/Conv2D:output:01sequential/EnConv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
sequential/EnConv2/BiasAdd?
sequential/EnConv2/ReluRelu#sequential/EnConv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
sequential/EnConv2/Relu?
sequential/EnPool2/MaxPoolMaxPool%sequential/EnConv2/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingSAME*
strides
2
sequential/EnPool2/MaxPool?
sequential/LayFlat/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
sequential/LayFlat/Const?
sequential/LayFlat/ReshapeReshape#sequential/EnPool2/MaxPool:output:0!sequential/LayFlat/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential/LayFlat/Reshape?
)sequential/DenseMid/MatMul/ReadVariableOpReadVariableOp2sequential_densemid_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02+
)sequential/DenseMid/MatMul/ReadVariableOp?
sequential/DenseMid/MatMulMatMul#sequential/LayFlat/Reshape:output:01sequential/DenseMid/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/DenseMid/MatMul?
*sequential/DenseMid/BiasAdd/ReadVariableOpReadVariableOp3sequential_densemid_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*sequential/DenseMid/BiasAdd/ReadVariableOp?
sequential/DenseMid/BiasAddBiasAdd$sequential/DenseMid/MatMul:product:02sequential/DenseMid/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/DenseMid/BiasAdd?
sequential/DenseMid/ReluRelu$sequential/DenseMid/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential/DenseMid/Relu?
sequential/MidDrop/IdentityIdentity&sequential/DenseMid/Relu:activations:0*
T0*(
_output_shapes
:??????????2
sequential/MidDrop/Identity?
,sequential/DenseClass1/MatMul/ReadVariableOpReadVariableOp5sequential_denseclass1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential/DenseClass1/MatMul/ReadVariableOp?
sequential/DenseClass1/MatMulMatMul$sequential/MidDrop/Identity:output:04sequential/DenseClass1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/DenseClass1/MatMul?
-sequential/DenseClass1/BiasAdd/ReadVariableOpReadVariableOp6sequential_denseclass1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential/DenseClass1/BiasAdd/ReadVariableOp?
sequential/DenseClass1/BiasAddBiasAdd'sequential/DenseClass1/MatMul:product:05sequential/DenseClass1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential/DenseClass1/BiasAdd?
sequential/DenseClass1/ReluRelu'sequential/DenseClass1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential/DenseClass1/Relu?
sequential/ClsDrop1/IdentityIdentity)sequential/DenseClass1/Relu:activations:0*
T0*(
_output_shapes
:??????????2
sequential/ClsDrop1/Identity?
,sequential/DenseClass2/MatMul/ReadVariableOpReadVariableOp5sequential_denseclass2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02.
,sequential/DenseClass2/MatMul/ReadVariableOp?
sequential/DenseClass2/MatMulMatMul%sequential/ClsDrop1/Identity:output:04sequential/DenseClass2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential/DenseClass2/MatMul?
-sequential/DenseClass2/BiasAdd/ReadVariableOpReadVariableOp6sequential_denseclass2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential/DenseClass2/BiasAdd/ReadVariableOp?
sequential/DenseClass2/BiasAddBiasAdd'sequential/DenseClass2/MatMul:product:05sequential/DenseClass2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
sequential/DenseClass2/BiasAdd?
sequential/DenseClass2/ReluRelu'sequential/DenseClass2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential/DenseClass2/Relu?
sequential/ClsDrop2/IdentityIdentity)sequential/DenseClass2/Relu:activations:0*
T0*'
_output_shapes
:?????????@2
sequential/ClsDrop2/Identity?
'sequential/LayOut/MatMul/ReadVariableOpReadVariableOp0sequential_layout_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02)
'sequential/LayOut/MatMul/ReadVariableOp?
sequential/LayOut/MatMulMatMul%sequential/ClsDrop2/Identity:output:0/sequential/LayOut/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential/LayOut/MatMul?
(sequential/LayOut/BiasAdd/ReadVariableOpReadVariableOp1sequential_layout_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02*
(sequential/LayOut/BiasAdd/ReadVariableOp?
sequential/LayOut/BiasAddBiasAdd"sequential/LayOut/MatMul:product:00sequential/LayOut/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential/LayOut/BiasAdd?
sequential/LayOut/SigmoidSigmoid"sequential/LayOut/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
sequential/LayOut/Sigmoid?
IdentityIdentitysequential/LayOut/Sigmoid:y:0.^sequential/DenseClass1/BiasAdd/ReadVariableOp-^sequential/DenseClass1/MatMul/ReadVariableOp.^sequential/DenseClass2/BiasAdd/ReadVariableOp-^sequential/DenseClass2/MatMul/ReadVariableOp+^sequential/DenseMid/BiasAdd/ReadVariableOp*^sequential/DenseMid/MatMul/ReadVariableOp*^sequential/EnConv1/BiasAdd/ReadVariableOp)^sequential/EnConv1/Conv2D/ReadVariableOp*^sequential/EnConv2/BiasAdd/ReadVariableOp)^sequential/EnConv2/Conv2D/ReadVariableOp)^sequential/LayOut/BiasAdd/ReadVariableOp(^sequential/LayOut/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????::::::::::::2^
-sequential/DenseClass1/BiasAdd/ReadVariableOp-sequential/DenseClass1/BiasAdd/ReadVariableOp2\
,sequential/DenseClass1/MatMul/ReadVariableOp,sequential/DenseClass1/MatMul/ReadVariableOp2^
-sequential/DenseClass2/BiasAdd/ReadVariableOp-sequential/DenseClass2/BiasAdd/ReadVariableOp2\
,sequential/DenseClass2/MatMul/ReadVariableOp,sequential/DenseClass2/MatMul/ReadVariableOp2X
*sequential/DenseMid/BiasAdd/ReadVariableOp*sequential/DenseMid/BiasAdd/ReadVariableOp2V
)sequential/DenseMid/MatMul/ReadVariableOp)sequential/DenseMid/MatMul/ReadVariableOp2V
)sequential/EnConv1/BiasAdd/ReadVariableOp)sequential/EnConv1/BiasAdd/ReadVariableOp2T
(sequential/EnConv1/Conv2D/ReadVariableOp(sequential/EnConv1/Conv2D/ReadVariableOp2V
)sequential/EnConv2/BiasAdd/ReadVariableOp)sequential/EnConv2/BiasAdd/ReadVariableOp2T
(sequential/EnConv2/Conv2D/ReadVariableOp(sequential/EnConv2/Conv2D/ReadVariableOp2T
(sequential/LayOut/BiasAdd/ReadVariableOp(sequential/LayOut/BiasAdd/ReadVariableOp2R
'sequential/LayOut/MatMul/ReadVariableOp'sequential/LayOut/MatMul/ReadVariableOp:V R
/
_output_shapes
:?????????

_user_specified_nameLayIn
?
}
(__inference_EnConv2_layer_call_fn_100366

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_EnConv2_layer_call_and_return_conditional_losses_996542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
*__inference_sequential_layer_call_fn_99996	
layin
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllayinunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_999692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameLayIn
?	
?
+__inference_sequential_layer_call_fn_100066	
layin
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllayinunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1000392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_nameLayIn
½
?
"__inference__traced_restore_100841
file_prefix#
assignvariableop_enconv1_kernel#
assignvariableop_1_enconv1_bias%
!assignvariableop_2_enconv2_kernel#
assignvariableop_3_enconv2_bias&
"assignvariableop_4_densemid_kernel$
 assignvariableop_5_densemid_bias)
%assignvariableop_6_denseclass1_kernel'
#assignvariableop_7_denseclass1_bias)
%assignvariableop_8_denseclass2_kernel'
#assignvariableop_9_denseclass2_bias%
!assignvariableop_10_layout_kernel#
assignvariableop_11_layout_bias!
assignvariableop_12_adam_iter#
assignvariableop_13_adam_beta_1#
assignvariableop_14_adam_beta_2"
assignvariableop_15_adam_decay*
&assignvariableop_16_adam_learning_rate
assignvariableop_17_total
assignvariableop_18_count
assignvariableop_19_total_1
assignvariableop_20_count_1-
)assignvariableop_21_adam_enconv1_kernel_m+
'assignvariableop_22_adam_enconv1_bias_m-
)assignvariableop_23_adam_enconv2_kernel_m+
'assignvariableop_24_adam_enconv2_bias_m.
*assignvariableop_25_adam_densemid_kernel_m,
(assignvariableop_26_adam_densemid_bias_m1
-assignvariableop_27_adam_denseclass1_kernel_m/
+assignvariableop_28_adam_denseclass1_bias_m1
-assignvariableop_29_adam_denseclass2_kernel_m/
+assignvariableop_30_adam_denseclass2_bias_m,
(assignvariableop_31_adam_layout_kernel_m*
&assignvariableop_32_adam_layout_bias_m-
)assignvariableop_33_adam_enconv1_kernel_v+
'assignvariableop_34_adam_enconv1_bias_v-
)assignvariableop_35_adam_enconv2_kernel_v+
'assignvariableop_36_adam_enconv2_bias_v.
*assignvariableop_37_adam_densemid_kernel_v,
(assignvariableop_38_adam_densemid_bias_v1
-assignvariableop_39_adam_denseclass1_kernel_v/
+assignvariableop_40_adam_denseclass1_bias_v1
-assignvariableop_41_adam_denseclass2_kernel_v/
+assignvariableop_42_adam_denseclass2_bias_v,
(assignvariableop_43_adam_layout_kernel_v*
&assignvariableop_44_adam_layout_bias_v
identity_46??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*?
value?B?.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_enconv1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_enconv1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_enconv2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_enconv2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_densemid_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_densemid_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_denseclass1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp#assignvariableop_7_denseclass1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_denseclass2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp#assignvariableop_9_denseclass2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp!assignvariableop_10_layout_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_layout_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_enconv1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_enconv1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_enconv2_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_enconv2_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_densemid_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_densemid_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp-assignvariableop_27_adam_denseclass1_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_denseclass1_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp-assignvariableop_29_adam_denseclass2_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_denseclass2_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_layout_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_layout_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_enconv1_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_enconv1_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_enconv2_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_enconv2_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_densemid_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_densemid_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp-assignvariableop_39_adam_denseclass1_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp+assignvariableop_40_adam_denseclass1_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp-assignvariableop_41_adam_denseclass2_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp+assignvariableop_42_adam_denseclass2_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_layout_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_layout_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_449
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_45?
Identity_46IdentityIdentity_45:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_46"#
identity_46Identity_46:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?	
?
F__inference_DenseClass2_layer_call_and_return_conditional_losses_99810

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
C__inference_EnDrop1_layer_call_and_return_conditional_losses_100336

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
+__inference_sequential_layer_call_fn_100270

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_999692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
C__inference_ClsDrop1_layer_call_and_return_conditional_losses_99781

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
_
C__inference_LayFlat_layer_call_and_return_conditional_losses_100372

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
B__inference_MidDrop_layer_call_and_return_conditional_losses_99724

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
+__inference_sequential_layer_call_fn_100299

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1000392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:?????????::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
|
'__inference_LayOut_layer_call_fn_100538

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_LayOut_layer_call_and_return_conditional_losses_998672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
?
LayIn6
serving_default_LayIn:0?????????:
LayOut0
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?S
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
?_default_save_signature
+?&call_and_return_all_conditional_losses
?__call__"?N
_tf_keras_sequential?N{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "LayIn"}}, {"class_name": "Conv2D", "config": {"name": "EnConv1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "EnPool1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "EnDrop1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "EnConv2", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "EnPool2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "LayFlat", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "DenseMid", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "MidDrop", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "DenseClass1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "ClsDrop1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "DenseClass2", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "ClsDrop2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "LayOut", "trainable": true, "dtype": "float32", "units": 10, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "LayIn"}}, {"class_name": "Conv2D", "config": {"name": "EnConv1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "EnPool1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "EnDrop1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "EnConv2", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "EnPool2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "LayFlat", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "DenseMid", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "MidDrop", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "DenseClass1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "ClsDrop1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "DenseClass2", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "ClsDrop2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "LayOut", "trainable": true, "dtype": "float32", "units": 10, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?	

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "EnConv1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "EnConv1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}}
?
regularization_losses
trainable_variables
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "EnPool1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "EnPool1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
regularization_losses
trainable_variables
 	variables
!	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "EnDrop1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "EnDrop1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?	

"kernel
#bias
$regularization_losses
%trainable_variables
&	variables
'	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "EnConv2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "EnConv2", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 16]}}
?
(regularization_losses
)trainable_variables
*	variables
+	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "EnPool2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "EnPool2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
,regularization_losses
-trainable_variables
.	variables
/	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Flatten", "name": "LayFlat", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "LayFlat", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

0kernel
1bias
2regularization_losses
3trainable_variables
4	variables
5	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "DenseMid", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "DenseMid", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 392}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 392]}}
?
6regularization_losses
7trainable_variables
8	variables
9	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "MidDrop", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "MidDrop", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?

:kernel
;bias
<regularization_losses
=trainable_variables
>	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "DenseClass1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "DenseClass1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "ClsDrop1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ClsDrop1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?

Dkernel
Ebias
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "DenseClass2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "DenseClass2", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
Jregularization_losses
Ktrainable_variables
L	variables
M	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "ClsDrop2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ClsDrop2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?

Nkernel
Obias
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "LayOut", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "LayOut", "trainable": true, "dtype": "float32", "units": 10, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?
Titer

Ubeta_1

Vbeta_2
	Wdecay
Xlearning_ratem?m?"m?#m?0m?1m?:m?;m?Dm?Em?Nm?Om?v?v?"v?#v?0v?1v?:v?;v?Dv?Ev?Nv?Ov?"
	optimizer
 "
trackable_list_wrapper
v
0
1
"2
#3
04
15
:6
;7
D8
E9
N10
O11"
trackable_list_wrapper
v
0
1
"2
#3
04
15
:6
;7
D8
E9
N10
O11"
trackable_list_wrapper
?
regularization_losses
Ynon_trainable_variables

Zlayers
[layer_regularization_losses
\metrics
]layer_metrics
trainable_variables
	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
(:&2EnConv1/kernel
:2EnConv1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
regularization_losses
^non_trainable_variables
trainable_variables

_layers
`layer_regularization_losses
ametrics
blayer_metrics
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
regularization_losses
cnon_trainable_variables
trainable_variables

dlayers
elayer_regularization_losses
fmetrics
glayer_metrics
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
regularization_losses
hnon_trainable_variables
trainable_variables

ilayers
jlayer_regularization_losses
kmetrics
llayer_metrics
 	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
(:&2EnConv2/kernel
:2EnConv2/bias
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
?
$regularization_losses
mnon_trainable_variables
%trainable_variables

nlayers
olayer_regularization_losses
pmetrics
qlayer_metrics
&	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
(regularization_losses
rnon_trainable_variables
)trainable_variables

slayers
tlayer_regularization_losses
umetrics
vlayer_metrics
*	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
,regularization_losses
wnon_trainable_variables
-trainable_variables

xlayers
ylayer_regularization_losses
zmetrics
{layer_metrics
.	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2DenseMid/kernel
:?2DenseMid/bias
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
?
2regularization_losses
|non_trainable_variables
3trainable_variables

}layers
~layer_regularization_losses
metrics
?layer_metrics
4	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
6regularization_losses
?non_trainable_variables
7trainable_variables
?layers
 ?layer_regularization_losses
?metrics
?layer_metrics
8	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$
??2DenseClass1/kernel
:?2DenseClass1/bias
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
?
<regularization_losses
?non_trainable_variables
=trainable_variables
?layers
 ?layer_regularization_losses
?metrics
?layer_metrics
>	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
@regularization_losses
?non_trainable_variables
Atrainable_variables
?layers
 ?layer_regularization_losses
?metrics
?layer_metrics
B	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
%:#	?@2DenseClass2/kernel
:@2DenseClass2/bias
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
?
Fregularization_losses
?non_trainable_variables
Gtrainable_variables
?layers
 ?layer_regularization_losses
?metrics
?layer_metrics
H	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Jregularization_losses
?non_trainable_variables
Ktrainable_variables
?layers
 ?layer_regularization_losses
?metrics
?layer_metrics
L	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:@
2LayOut/kernel
:
2LayOut/bias
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
?
Pregularization_losses
?non_trainable_variables
Qtrainable_variables
?layers
 ?layer_regularization_losses
?metrics
?layer_metrics
R	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
	8

9
10
11
12"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
-:+2Adam/EnConv1/kernel/m
:2Adam/EnConv1/bias/m
-:+2Adam/EnConv2/kernel/m
:2Adam/EnConv2/bias/m
(:&
??2Adam/DenseMid/kernel/m
!:?2Adam/DenseMid/bias/m
+:)
??2Adam/DenseClass1/kernel/m
$:"?2Adam/DenseClass1/bias/m
*:(	?@2Adam/DenseClass2/kernel/m
#:!@2Adam/DenseClass2/bias/m
$:"@
2Adam/LayOut/kernel/m
:
2Adam/LayOut/bias/m
-:+2Adam/EnConv1/kernel/v
:2Adam/EnConv1/bias/v
-:+2Adam/EnConv2/kernel/v
:2Adam/EnConv2/bias/v
(:&
??2Adam/DenseMid/kernel/v
!:?2Adam/DenseMid/bias/v
+:)
??2Adam/DenseClass1/kernel/v
$:"?2Adam/DenseClass1/bias/v
*:(	?@2Adam/DenseClass2/kernel/v
#:!@2Adam/DenseClass2/bias/v
$:"@
2Adam/LayOut/kernel/v
:
2Adam/LayOut/bias/v
?2?
 __inference__wrapped_model_99557?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *,?)
'?$
LayIn?????????
?2?
F__inference_sequential_layer_call_and_return_conditional_losses_100241
F__inference_sequential_layer_call_and_return_conditional_losses_100187
E__inference_sequential_layer_call_and_return_conditional_losses_99884
E__inference_sequential_layer_call_and_return_conditional_losses_99925?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_sequential_layer_call_fn_100066
+__inference_sequential_layer_call_fn_100270
*__inference_sequential_layer_call_fn_99996
+__inference_sequential_layer_call_fn_100299?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_EnConv1_layer_call_and_return_conditional_losses_100310?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_EnConv1_layer_call_fn_100319?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_EnPool1_layer_call_and_return_conditional_losses_99563?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
'__inference_EnPool1_layer_call_fn_99569?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
C__inference_EnDrop1_layer_call_and_return_conditional_losses_100336
C__inference_EnDrop1_layer_call_and_return_conditional_losses_100331?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_EnDrop1_layer_call_fn_100346
(__inference_EnDrop1_layer_call_fn_100341?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_EnConv2_layer_call_and_return_conditional_losses_100357?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_EnConv2_layer_call_fn_100366?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_EnPool2_layer_call_and_return_conditional_losses_99575?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
'__inference_EnPool2_layer_call_fn_99581?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
C__inference_LayFlat_layer_call_and_return_conditional_losses_100372?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_LayFlat_layer_call_fn_100377?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_DenseMid_layer_call_and_return_conditional_losses_100388?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_DenseMid_layer_call_fn_100397?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_MidDrop_layer_call_and_return_conditional_losses_100409
C__inference_MidDrop_layer_call_and_return_conditional_losses_100414?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_MidDrop_layer_call_fn_100424
(__inference_MidDrop_layer_call_fn_100419?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_DenseClass1_layer_call_and_return_conditional_losses_100435?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_DenseClass1_layer_call_fn_100444?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_ClsDrop1_layer_call_and_return_conditional_losses_100456
D__inference_ClsDrop1_layer_call_and_return_conditional_losses_100461?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_ClsDrop1_layer_call_fn_100466
)__inference_ClsDrop1_layer_call_fn_100471?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_DenseClass2_layer_call_and_return_conditional_losses_100482?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_DenseClass2_layer_call_fn_100491?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_ClsDrop2_layer_call_and_return_conditional_losses_100503
D__inference_ClsDrop2_layer_call_and_return_conditional_losses_100508?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_ClsDrop2_layer_call_fn_100513
)__inference_ClsDrop2_layer_call_fn_100518?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_LayOut_layer_call_and_return_conditional_losses_100529?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_LayOut_layer_call_fn_100538?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_100105LayIn"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
D__inference_ClsDrop1_layer_call_and_return_conditional_losses_100456^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
D__inference_ClsDrop1_layer_call_and_return_conditional_losses_100461^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ~
)__inference_ClsDrop1_layer_call_fn_100466Q4?1
*?'
!?
inputs??????????
p
? "???????????~
)__inference_ClsDrop1_layer_call_fn_100471Q4?1
*?'
!?
inputs??????????
p 
? "????????????
D__inference_ClsDrop2_layer_call_and_return_conditional_losses_100503\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
D__inference_ClsDrop2_layer_call_and_return_conditional_losses_100508\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? |
)__inference_ClsDrop2_layer_call_fn_100513O3?0
)?&
 ?
inputs?????????@
p
? "??????????@|
)__inference_ClsDrop2_layer_call_fn_100518O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
G__inference_DenseClass1_layer_call_and_return_conditional_losses_100435^:;0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
,__inference_DenseClass1_layer_call_fn_100444Q:;0?-
&?#
!?
inputs??????????
? "????????????
G__inference_DenseClass2_layer_call_and_return_conditional_losses_100482]DE0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? ?
,__inference_DenseClass2_layer_call_fn_100491PDE0?-
&?#
!?
inputs??????????
? "??????????@?
D__inference_DenseMid_layer_call_and_return_conditional_losses_100388^010?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_DenseMid_layer_call_fn_100397Q010?-
&?#
!?
inputs??????????
? "????????????
C__inference_EnConv1_layer_call_and_return_conditional_losses_100310l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
(__inference_EnConv1_layer_call_fn_100319_7?4
-?*
(?%
inputs?????????
? " ???????????
C__inference_EnConv2_layer_call_and_return_conditional_losses_100357l"#7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
(__inference_EnConv2_layer_call_fn_100366_"#7?4
-?*
(?%
inputs?????????
? " ???????????
C__inference_EnDrop1_layer_call_and_return_conditional_losses_100331l;?8
1?.
(?%
inputs?????????
p
? "-?*
#? 
0?????????
? ?
C__inference_EnDrop1_layer_call_and_return_conditional_losses_100336l;?8
1?.
(?%
inputs?????????
p 
? "-?*
#? 
0?????????
? ?
(__inference_EnDrop1_layer_call_fn_100341_;?8
1?.
(?%
inputs?????????
p
? " ???????????
(__inference_EnDrop1_layer_call_fn_100346_;?8
1?.
(?%
inputs?????????
p 
? " ???????????
B__inference_EnPool1_layer_call_and_return_conditional_losses_99563?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
'__inference_EnPool1_layer_call_fn_99569?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
B__inference_EnPool2_layer_call_and_return_conditional_losses_99575?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
'__inference_EnPool2_layer_call_fn_99581?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
C__inference_LayFlat_layer_call_and_return_conditional_losses_100372a7?4
-?*
(?%
inputs?????????
? "&?#
?
0??????????
? ?
(__inference_LayFlat_layer_call_fn_100377T7?4
-?*
(?%
inputs?????????
? "????????????
B__inference_LayOut_layer_call_and_return_conditional_losses_100529\NO/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????

? z
'__inference_LayOut_layer_call_fn_100538ONO/?,
%?"
 ?
inputs?????????@
? "??????????
?
C__inference_MidDrop_layer_call_and_return_conditional_losses_100409^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
C__inference_MidDrop_layer_call_and_return_conditional_losses_100414^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? }
(__inference_MidDrop_layer_call_fn_100419Q4?1
*?'
!?
inputs??????????
p
? "???????????}
(__inference_MidDrop_layer_call_fn_100424Q4?1
*?'
!?
inputs??????????
p 
? "????????????
 __inference__wrapped_model_99557w"#01:;DENO6?3
,?)
'?$
LayIn?????????
? "/?,
*
LayOut ?
LayOut?????????
?
F__inference_sequential_layer_call_and_return_conditional_losses_100187v"#01:;DENO??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????

? ?
F__inference_sequential_layer_call_and_return_conditional_losses_100241v"#01:;DENO??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????

? ?
E__inference_sequential_layer_call_and_return_conditional_losses_99884u"#01:;DENO>?;
4?1
'?$
LayIn?????????
p

 
? "%?"
?
0?????????

? ?
E__inference_sequential_layer_call_and_return_conditional_losses_99925u"#01:;DENO>?;
4?1
'?$
LayIn?????????
p 

 
? "%?"
?
0?????????

? ?
+__inference_sequential_layer_call_fn_100066h"#01:;DENO>?;
4?1
'?$
LayIn?????????
p 

 
? "??????????
?
+__inference_sequential_layer_call_fn_100270i"#01:;DENO??<
5?2
(?%
inputs?????????
p

 
? "??????????
?
+__inference_sequential_layer_call_fn_100299i"#01:;DENO??<
5?2
(?%
inputs?????????
p 

 
? "??????????
?
*__inference_sequential_layer_call_fn_99996h"#01:;DENO>?;
4?1
'?$
LayIn?????????
p

 
? "??????????
?
$__inference_signature_wrapper_100105?"#01:;DENO??<
? 
5?2
0
LayIn'?$
LayIn?????????"/?,
*
LayOut ?
LayOut?????????
