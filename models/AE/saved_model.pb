¾Ð
¡÷
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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

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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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

ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-0-g3f878cff5b68¸Ú
z
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*
shared_namedense_6/kernel
s
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel* 
_output_shapes
:
À*
dtype0
q
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_6/bias
j
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes	
:*
dtype0
z
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*
shared_namedense_7/kernel
s
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel* 
_output_shapes
:
À*
dtype0
q
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*
shared_namedense_7/bias
j
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes	
:À*
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

conv2d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*!
shared_nameconv2d_24/kernel
}
$conv2d_24/kernel/Read/ReadVariableOpReadVariableOpconv2d_24/kernel*&
_output_shapes
:	*
dtype0
t
conv2d_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_nameconv2d_24/bias
m
"conv2d_24/bias/Read/ReadVariableOpReadVariableOpconv2d_24/bias*
_output_shapes
:	*
dtype0

conv2d_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*!
shared_nameconv2d_25/kernel
}
$conv2d_25/kernel/Read/ReadVariableOpReadVariableOpconv2d_25/kernel*&
_output_shapes
:	*
dtype0
t
conv2d_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_25/bias
m
"conv2d_25/bias/Read/ReadVariableOpReadVariableOpconv2d_25/bias*
_output_shapes
:*
dtype0

conv2d_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_26/kernel
}
$conv2d_26/kernel/Read/ReadVariableOpReadVariableOpconv2d_26/kernel*&
_output_shapes
: *
dtype0
t
conv2d_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_26/bias
m
"conv2d_26/bias/Read/ReadVariableOpReadVariableOpconv2d_26/bias*
_output_shapes
: *
dtype0

conv2d_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_27/kernel
}
$conv2d_27/kernel/Read/ReadVariableOpReadVariableOpconv2d_27/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_27/bias
m
"conv2d_27/bias/Read/ReadVariableOpReadVariableOpconv2d_27/bias*
_output_shapes
:@*
dtype0

conv2d_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_28/kernel
}
$conv2d_28/kernel/Read/ReadVariableOpReadVariableOpconv2d_28/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_28/bias
m
"conv2d_28/bias/Read/ReadVariableOpReadVariableOpconv2d_28/bias*
_output_shapes
:@*
dtype0

conv2d_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *!
shared_nameconv2d_29/kernel
}
$conv2d_29/kernel/Read/ReadVariableOpReadVariableOpconv2d_29/kernel*&
_output_shapes
:@ *
dtype0
t
conv2d_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_29/bias
m
"conv2d_29/bias/Read/ReadVariableOpReadVariableOpconv2d_29/bias*
_output_shapes
: *
dtype0

conv2d_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_30/kernel
}
$conv2d_30/kernel/Read/ReadVariableOpReadVariableOpconv2d_30/kernel*&
_output_shapes
: *
dtype0
t
conv2d_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_30/bias
m
"conv2d_30/bias/Read/ReadVariableOpReadVariableOpconv2d_30/bias*
_output_shapes
:*
dtype0

conv2d_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_31/kernel
}
$conv2d_31/kernel/Read/ReadVariableOpReadVariableOpconv2d_31/kernel*&
_output_shapes
:*
dtype0
t
conv2d_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_31/bias
m
"conv2d_31/bias/Read/ReadVariableOpReadVariableOpconv2d_31/bias*
_output_shapes
:*
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

Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m* 
_output_shapes
:
À*
dtype0

Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/m
x
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m* 
_output_shapes
:
À*
dtype0

Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*$
shared_nameAdam/dense_7/bias/m
x
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes	
:À*
dtype0

Adam/conv2d_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/conv2d_24/kernel/m

+Adam/conv2d_24/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/kernel/m*&
_output_shapes
:	*
dtype0

Adam/conv2d_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/conv2d_24/bias/m
{
)Adam/conv2d_24/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/bias/m*
_output_shapes
:	*
dtype0

Adam/conv2d_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/conv2d_25/kernel/m

+Adam/conv2d_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/kernel/m*&
_output_shapes
:	*
dtype0

Adam/conv2d_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_25/bias/m
{
)Adam/conv2d_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_26/kernel/m

+Adam/conv2d_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_26/bias/m
{
)Adam/conv2d_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_27/kernel/m

+Adam/conv2d_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_27/bias/m
{
)Adam/conv2d_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_28/kernel/m

+Adam/conv2d_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_28/bias/m
{
)Adam/conv2d_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/conv2d_29/kernel/m

+Adam/conv2d_29/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/m*&
_output_shapes
:@ *
dtype0

Adam/conv2d_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_29/bias/m
{
)Adam/conv2d_29/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_30/kernel/m

+Adam/conv2d_30/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_30/bias/m
{
)Adam/conv2d_30/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_31/kernel/m

+Adam/conv2d_31/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_31/bias/m
{
)Adam/conv2d_31/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/bias/m*
_output_shapes
:*
dtype0

Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v* 
_output_shapes
:
À*
dtype0

Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/v
x
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v* 
_output_shapes
:
À*
dtype0

Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*$
shared_nameAdam/dense_7/bias/v
x
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes	
:À*
dtype0

Adam/conv2d_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/conv2d_24/kernel/v

+Adam/conv2d_24/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/kernel/v*&
_output_shapes
:	*
dtype0

Adam/conv2d_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/conv2d_24/bias/v
{
)Adam/conv2d_24/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/bias/v*
_output_shapes
:	*
dtype0

Adam/conv2d_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/conv2d_25/kernel/v

+Adam/conv2d_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/kernel/v*&
_output_shapes
:	*
dtype0

Adam/conv2d_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_25/bias/v
{
)Adam/conv2d_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_26/kernel/v

+Adam/conv2d_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_26/bias/v
{
)Adam/conv2d_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_27/kernel/v

+Adam/conv2d_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_27/bias/v
{
)Adam/conv2d_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_28/kernel/v

+Adam/conv2d_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_28/bias/v
{
)Adam/conv2d_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/conv2d_29/kernel/v

+Adam/conv2d_29/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/v*&
_output_shapes
:@ *
dtype0

Adam/conv2d_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_29/bias/v
{
)Adam/conv2d_29/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_30/kernel/v

+Adam/conv2d_30/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_30/bias/v
{
)Adam/conv2d_30/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_30/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_31/kernel/v

+Adam/conv2d_31/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_31/bias/v
{
)Adam/conv2d_31/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_31/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ó
valueÈBÄ B¼

layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 

encoder
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
¦

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses*
¦

&kernel
'bias
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses*

.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses* 

4decoder
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses*
Ô
;iter

<beta_1

=beta_2
	>decay
?learning_ratemm &m¡'m¢@m£Am¤Bm¥Cm¦Dm§Em¨Fm©GmªHm«Im¬Jm­Km®Lm¯Mm°Nm±Om²v³v´&vµ'v¶@v·Av¸Bv¹CvºDv»Ev¼Fv½Gv¾Hv¿IvÀJvÁKvÂLvÃMvÄNvÅOvÆ*

@0
A1
B2
C3
D4
E5
F6
G7
8
9
&10
'11
H12
I13
J14
K15
L16
M17
N18
O19*

@0
A1
B2
C3
D4
E5
F6
G7
8
9
&10
'11
H12
I13
J14
K15
L16
M17
N18
O19*
* 
°
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Userving_default* 
¬
Vlayer_with_weights-0
Vlayer-0
Wlayer_with_weights-1
Wlayer-1
Xlayer_with_weights-2
Xlayer-2
Ylayer_with_weights-3
Ylayer-3
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses*
<
@0
A1
B2
C3
D4
E5
F6
G7*
<
@0
A1
B2
C3
D4
E5
F6
G7*
* 

`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

&0
'1*

&0
'1*
* 

onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses* 
* 
* 
è
ylayer-0
zlayer_with_weights-0
zlayer-1
{layer-2
|layer_with_weights-1
|layer-3
}layer-4
~layer_with_weights-2
~layer-5
layer-6
layer_with_weights-3
layer-7
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
<
H0
I1
J2
K3
L4
M5
N6
O7*
<
H0
I1
J2
K3
L4
M5
N6
O7*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_24/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_24/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_25/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_25/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_26/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_26/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_27/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_27/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_28/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_28/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_29/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_29/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_30/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_30/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_31/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_31/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
* 
5
0
1
2
3
4
5
6*

0*
* 
* 
* 
¬

@kernel
Abias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¬

Bkernel
Cbias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¬

Dkernel
Ebias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¬

Fkernel
Gbias
	variables
 trainable_variables
¡regularization_losses
¢	keras_api
£__call__
+¤&call_and_return_all_conditional_losses*
<
@0
A1
B2
C3
D4
E5
F6
G7*
<
@0
A1
B2
C3
D4
E5
F6
G7*
* 

¥non_trainable_variables
¦layers
§metrics
 ¨layer_regularization_losses
©layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

ª	variables
«trainable_variables
¬regularization_losses
­	keras_api
®__call__
+¯&call_and_return_all_conditional_losses* 
¬

Hkernel
Ibias
°	variables
±trainable_variables
²regularization_losses
³	keras_api
´__call__
+µ&call_and_return_all_conditional_losses*

¶	variables
·trainable_variables
¸regularization_losses
¹	keras_api
º__call__
+»&call_and_return_all_conditional_losses* 
¬

Jkernel
Kbias
¼	variables
½trainable_variables
¾regularization_losses
¿	keras_api
À__call__
+Á&call_and_return_all_conditional_losses*

Â	variables
Ãtrainable_variables
Äregularization_losses
Å	keras_api
Æ__call__
+Ç&call_and_return_all_conditional_losses* 
¬

Lkernel
Mbias
È	variables
Étrainable_variables
Êregularization_losses
Ë	keras_api
Ì__call__
+Í&call_and_return_all_conditional_losses*

Î	variables
Ïtrainable_variables
Ðregularization_losses
Ñ	keras_api
Ò__call__
+Ó&call_and_return_all_conditional_losses* 
¬

Nkernel
Obias
Ô	variables
Õtrainable_variables
Öregularization_losses
×	keras_api
Ø__call__
+Ù&call_and_return_all_conditional_losses*
<
H0
I1
J2
K3
L4
M5
N6
O7*
<
H0
I1
J2
K3
L4
M5
N6
O7*
* 

Únon_trainable_variables
Ûlayers
Ümetrics
 Ýlayer_regularization_losses
Þlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 

40*
* 
* 
* 
<

ßtotal

àcount
á	variables
â	keras_api*

@0
A1*

@0
A1*
* 

ãnon_trainable_variables
älayers
åmetrics
 ælayer_regularization_losses
çlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 

B0
C1*

B0
C1*
* 

ènon_trainable_variables
élayers
êmetrics
 ëlayer_regularization_losses
ìlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 

D0
E1*

D0
E1*
* 

ínon_trainable_variables
îlayers
ïmetrics
 ðlayer_regularization_losses
ñlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 

F0
G1*

F0
G1*
* 

ònon_trainable_variables
ólayers
ômetrics
 õlayer_regularization_losses
ölayer_metrics
	variables
 trainable_variables
¡regularization_losses
£__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses*
* 
* 
* 
 
V0
W1
X2
Y3*
* 
* 
* 
* 
* 
* 

÷non_trainable_variables
ølayers
ùmetrics
 úlayer_regularization_losses
ûlayer_metrics
ª	variables
«trainable_variables
¬regularization_losses
®__call__
+¯&call_and_return_all_conditional_losses
'¯"call_and_return_conditional_losses* 
* 
* 

H0
I1*

H0
I1*
* 

ünon_trainable_variables
ýlayers
þmetrics
 ÿlayer_regularization_losses
layer_metrics
°	variables
±trainable_variables
²regularization_losses
´__call__
+µ&call_and_return_all_conditional_losses
'µ"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¶	variables
·trainable_variables
¸regularization_losses
º__call__
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses* 
* 
* 

J0
K1*

J0
K1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¼	variables
½trainable_variables
¾regularization_losses
À__call__
+Á&call_and_return_all_conditional_losses
'Á"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Â	variables
Ãtrainable_variables
Äregularization_losses
Æ__call__
+Ç&call_and_return_all_conditional_losses
'Ç"call_and_return_conditional_losses* 
* 
* 

L0
M1*

L0
M1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
È	variables
Étrainable_variables
Êregularization_losses
Ì__call__
+Í&call_and_return_all_conditional_losses
'Í"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Î	variables
Ïtrainable_variables
Ðregularization_losses
Ò__call__
+Ó&call_and_return_all_conditional_losses
'Ó"call_and_return_conditional_losses* 
* 
* 

N0
O1*

N0
O1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ô	variables
Õtrainable_variables
Öregularization_losses
Ø__call__
+Ù&call_and_return_all_conditional_losses
'Ù"call_and_return_conditional_losses*
* 
* 
* 
=
y0
z1
{2
|3
}4
~5
6
7*
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ß0
à1*

á	variables*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_24/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_24/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_25/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_25/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_26/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_26/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_27/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_27/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv2d_28/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_28/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv2d_29/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_29/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv2d_30/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_30/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv2d_31/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_31/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_24/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_24/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_25/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_25/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_26/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_26/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_27/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/conv2d_27/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv2d_28/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_28/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv2d_29/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_29/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv2d_30/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_30/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv2d_31/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_31/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_9Placeholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿPP
°
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_9conv2d_24/kernelconv2d_24/biasconv2d_25/kernelconv2d_25/biasconv2d_26/kernelconv2d_26/biasconv2d_27/kernelconv2d_27/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biasconv2d_28/kernelconv2d_28/biasconv2d_29/kernelconv2d_29/biasconv2d_30/kernelconv2d_30/biasconv2d_31/kernelconv2d_31/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_24535
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ë
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp$conv2d_24/kernel/Read/ReadVariableOp"conv2d_24/bias/Read/ReadVariableOp$conv2d_25/kernel/Read/ReadVariableOp"conv2d_25/bias/Read/ReadVariableOp$conv2d_26/kernel/Read/ReadVariableOp"conv2d_26/bias/Read/ReadVariableOp$conv2d_27/kernel/Read/ReadVariableOp"conv2d_27/bias/Read/ReadVariableOp$conv2d_28/kernel/Read/ReadVariableOp"conv2d_28/bias/Read/ReadVariableOp$conv2d_29/kernel/Read/ReadVariableOp"conv2d_29/bias/Read/ReadVariableOp$conv2d_30/kernel/Read/ReadVariableOp"conv2d_30/bias/Read/ReadVariableOp$conv2d_31/kernel/Read/ReadVariableOp"conv2d_31/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp+Adam/conv2d_24/kernel/m/Read/ReadVariableOp)Adam/conv2d_24/bias/m/Read/ReadVariableOp+Adam/conv2d_25/kernel/m/Read/ReadVariableOp)Adam/conv2d_25/bias/m/Read/ReadVariableOp+Adam/conv2d_26/kernel/m/Read/ReadVariableOp)Adam/conv2d_26/bias/m/Read/ReadVariableOp+Adam/conv2d_27/kernel/m/Read/ReadVariableOp)Adam/conv2d_27/bias/m/Read/ReadVariableOp+Adam/conv2d_28/kernel/m/Read/ReadVariableOp)Adam/conv2d_28/bias/m/Read/ReadVariableOp+Adam/conv2d_29/kernel/m/Read/ReadVariableOp)Adam/conv2d_29/bias/m/Read/ReadVariableOp+Adam/conv2d_30/kernel/m/Read/ReadVariableOp)Adam/conv2d_30/bias/m/Read/ReadVariableOp+Adam/conv2d_31/kernel/m/Read/ReadVariableOp)Adam/conv2d_31/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOp+Adam/conv2d_24/kernel/v/Read/ReadVariableOp)Adam/conv2d_24/bias/v/Read/ReadVariableOp+Adam/conv2d_25/kernel/v/Read/ReadVariableOp)Adam/conv2d_25/bias/v/Read/ReadVariableOp+Adam/conv2d_26/kernel/v/Read/ReadVariableOp)Adam/conv2d_26/bias/v/Read/ReadVariableOp+Adam/conv2d_27/kernel/v/Read/ReadVariableOp)Adam/conv2d_27/bias/v/Read/ReadVariableOp+Adam/conv2d_28/kernel/v/Read/ReadVariableOp)Adam/conv2d_28/bias/v/Read/ReadVariableOp+Adam/conv2d_29/kernel/v/Read/ReadVariableOp)Adam/conv2d_29/bias/v/Read/ReadVariableOp+Adam/conv2d_30/kernel/v/Read/ReadVariableOp)Adam/conv2d_30/bias/v/Read/ReadVariableOp+Adam/conv2d_31/kernel/v/Read/ReadVariableOp)Adam/conv2d_31/bias/v/Read/ReadVariableOpConst*P
TinI
G2E	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *'
f"R 
__inference__traced_save_25544
ª
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_6/kerneldense_6/biasdense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateconv2d_24/kernelconv2d_24/biasconv2d_25/kernelconv2d_25/biasconv2d_26/kernelconv2d_26/biasconv2d_27/kernelconv2d_27/biasconv2d_28/kernelconv2d_28/biasconv2d_29/kernelconv2d_29/biasconv2d_30/kernelconv2d_30/biasconv2d_31/kernelconv2d_31/biastotalcountAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/conv2d_24/kernel/mAdam/conv2d_24/bias/mAdam/conv2d_25/kernel/mAdam/conv2d_25/bias/mAdam/conv2d_26/kernel/mAdam/conv2d_26/bias/mAdam/conv2d_27/kernel/mAdam/conv2d_27/bias/mAdam/conv2d_28/kernel/mAdam/conv2d_28/bias/mAdam/conv2d_29/kernel/mAdam/conv2d_29/bias/mAdam/conv2d_30/kernel/mAdam/conv2d_30/bias/mAdam/conv2d_31/kernel/mAdam/conv2d_31/bias/mAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/vAdam/conv2d_24/kernel/vAdam/conv2d_24/bias/vAdam/conv2d_25/kernel/vAdam/conv2d_25/bias/vAdam/conv2d_26/kernel/vAdam/conv2d_26/bias/vAdam/conv2d_27/kernel/vAdam/conv2d_27/bias/vAdam/conv2d_28/kernel/vAdam/conv2d_28/bias/vAdam/conv2d_29/kernel/vAdam/conv2d_29/bias/vAdam/conv2d_30/kernel/vAdam/conv2d_30/bias/vAdam/conv2d_31/kernel/vAdam/conv2d_31/bias/v*O
TinH
F2D*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__traced_restore_25755Ï
ç0
¹
B__inference_encoder_layer_call_and_return_conditional_losses_23522

inputsO
5sequential_6_conv2d_24_conv2d_readvariableop_resource:	D
6sequential_6_conv2d_24_biasadd_readvariableop_resource:	O
5sequential_6_conv2d_25_conv2d_readvariableop_resource:	D
6sequential_6_conv2d_25_biasadd_readvariableop_resource:O
5sequential_6_conv2d_26_conv2d_readvariableop_resource: D
6sequential_6_conv2d_26_biasadd_readvariableop_resource: O
5sequential_6_conv2d_27_conv2d_readvariableop_resource: @D
6sequential_6_conv2d_27_biasadd_readvariableop_resource:@
identity¢-sequential_6/conv2d_24/BiasAdd/ReadVariableOp¢,sequential_6/conv2d_24/Conv2D/ReadVariableOp¢-sequential_6/conv2d_25/BiasAdd/ReadVariableOp¢,sequential_6/conv2d_25/Conv2D/ReadVariableOp¢-sequential_6/conv2d_26/BiasAdd/ReadVariableOp¢,sequential_6/conv2d_26/Conv2D/ReadVariableOp¢-sequential_6/conv2d_27/BiasAdd/ReadVariableOp¢,sequential_6/conv2d_27/Conv2D/ReadVariableOpª
,sequential_6/conv2d_24/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0Ç
sequential_6/conv2d_24/Conv2DConv2Dinputs4sequential_6/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides
 
-sequential_6/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0Â
sequential_6/conv2d_24/BiasAddBiasAdd&sequential_6/conv2d_24/Conv2D:output:05sequential_6/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
sequential_6/conv2d_24/ReluRelu'sequential_6/conv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	ª
,sequential_6/conv2d_25/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0ê
sequential_6/conv2d_25/Conv2DConv2D)sequential_6/conv2d_24/Relu:activations:04sequential_6/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
 
-sequential_6/conv2d_25/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Â
sequential_6/conv2d_25/BiasAddBiasAdd&sequential_6/conv2d_25/Conv2D:output:05sequential_6/conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_6/conv2d_25/ReluRelu'sequential_6/conv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
,sequential_6/conv2d_26/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ê
sequential_6/conv2d_26/Conv2DConv2D)sequential_6/conv2d_25/Relu:activations:04sequential_6/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides
 
-sequential_6/conv2d_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Â
sequential_6/conv2d_26/BiasAddBiasAdd&sequential_6/conv2d_26/Conv2D:output:05sequential_6/conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
sequential_6/conv2d_26/ReluRelu'sequential_6/conv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 ª
,sequential_6/conv2d_27/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ê
sequential_6/conv2d_27/Conv2DConv2D)sequential_6/conv2d_26/Relu:activations:04sequential_6/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
 
-sequential_6/conv2d_27/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Â
sequential_6/conv2d_27/BiasAddBiasAdd&sequential_6/conv2d_27/Conv2D:output:05sequential_6/conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_6/conv2d_27/ReluRelu'sequential_6/conv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
IdentityIdentity)sequential_6/conv2d_27/Relu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
NoOpNoOp.^sequential_6/conv2d_24/BiasAdd/ReadVariableOp-^sequential_6/conv2d_24/Conv2D/ReadVariableOp.^sequential_6/conv2d_25/BiasAdd/ReadVariableOp-^sequential_6/conv2d_25/Conv2D/ReadVariableOp.^sequential_6/conv2d_26/BiasAdd/ReadVariableOp-^sequential_6/conv2d_26/Conv2D/ReadVariableOp.^sequential_6/conv2d_27/BiasAdd/ReadVariableOp-^sequential_6/conv2d_27/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2^
-sequential_6/conv2d_24/BiasAdd/ReadVariableOp-sequential_6/conv2d_24/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_24/Conv2D/ReadVariableOp,sequential_6/conv2d_24/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_25/BiasAdd/ReadVariableOp-sequential_6/conv2d_25/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_25/Conv2D/ReadVariableOp,sequential_6/conv2d_25/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_26/BiasAdd/ReadVariableOp-sequential_6/conv2d_26/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_26/Conv2D/ReadVariableOp,sequential_6/conv2d_26/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_27/BiasAdd/ReadVariableOp-sequential_6/conv2d_27/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_27/Conv2D/ReadVariableOp,sequential_6/conv2d_27/Conv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
¥

ö
B__inference_dense_7_layer_call_and_return_conditional_losses_23575

inputs2
matmul_readvariableop_resource:
À.
biasadd_readvariableop_resource:	À
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢

ä
,__inference_sequential_6_layer_call_fn_23073
conv2d_24_input!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
identity¢StatefulPartitionedCall¾
StatefulPartitionedCallStatefulPartitionedCallconv2d_24_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_23033w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
)
_user_specified_nameconv2d_24_input

g
K__inference_up_sampling2d_15_layer_call_and_return_conditional_losses_23194

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð
ý
D__inference_conv2d_28_layer_call_and_return_conditional_losses_23216

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
·!

=__inference_AE_layer_call_and_return_conditional_losses_24190
input_9'
encoder_24143:	
encoder_24145:	'
encoder_24147:	
encoder_24149:'
encoder_24151: 
encoder_24153: '
encoder_24155: @
encoder_24157:@!
dense_6_24161:
À
dense_6_24163:	!
dense_7_24166:
À
dense_7_24168:	À'
decoder_24172:@@
decoder_24174:@'
decoder_24176:@ 
decoder_24178: '
decoder_24180: 
decoder_24182:'
decoder_24184:
decoder_24186:
identity¢decoder/StatefulPartitionedCall¢dense_6/StatefulPartitionedCall¢dense_7/StatefulPartitionedCall¢encoder/StatefulPartitionedCallÛ
encoder/StatefulPartitionedCallStatefulPartitionedCallinput_9encoder_24143encoder_24145encoder_24147encoder_24149encoder_24151encoder_24153encoder_24155encoder_24157*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_23886ß
flatten_3/PartitionedCallPartitionedCall(encoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_23546
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_24161dense_6_24163*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_23558
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_24166dense_7_24168*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_23575æ
reshape_3/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_reshape_3_layer_call_and_return_conditional_losses_23595ö
decoder/StatefulPartitionedCallStatefulPartitionedCall"reshape_3/PartitionedCall:output:0decoder_24172decoder_24174decoder_24176decoder_24178decoder_24180decoder_24182decoder_24184decoder_24186*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_23779
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPÎ
NoOpNoOp ^decoder/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
!
_user_specified_name	input_9

ý
D__inference_conv2d_24_layer_call_and_return_conditional_losses_25112

inputs8
conv2d_readvariableop_resource:	-
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿPP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
´!

=__inference_AE_layer_call_and_return_conditional_losses_23664

inputs'
encoder_23523:	
encoder_23525:	'
encoder_23527:	
encoder_23529:'
encoder_23531: 
encoder_23533: '
encoder_23535: @
encoder_23537:@!
dense_6_23559:
À
dense_6_23561:	!
dense_7_23576:
À
dense_7_23578:	À'
decoder_23646:@@
decoder_23648:@'
decoder_23650:@ 
decoder_23652: '
decoder_23654: 
decoder_23656:'
decoder_23658:
decoder_23660:
identity¢decoder/StatefulPartitionedCall¢dense_6/StatefulPartitionedCall¢dense_7/StatefulPartitionedCall¢encoder/StatefulPartitionedCallÚ
encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_23523encoder_23525encoder_23527encoder_23529encoder_23531encoder_23533encoder_23535encoder_23537*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_23522ß
flatten_3/PartitionedCallPartitionedCall(encoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_23546
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_23559dense_6_23561*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_23558
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_23576dense_7_23578*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_23575æ
reshape_3/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_reshape_3_layer_call_and_return_conditional_losses_23595ö
decoder/StatefulPartitionedCallStatefulPartitionedCall"reshape_3/PartitionedCall:output:0decoder_23646decoder_23648decoder_23650decoder_23652decoder_23654decoder_23656decoder_23658decoder_23660*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_23645
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPÎ
NoOpNoOp ^decoder/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
¶:
î
G__inference_sequential_7_layer_call_and_return_conditional_losses_25044

inputsB
(conv2d_28_conv2d_readvariableop_resource:@@7
)conv2d_28_biasadd_readvariableop_resource:@B
(conv2d_29_conv2d_readvariableop_resource:@ 7
)conv2d_29_biasadd_readvariableop_resource: B
(conv2d_30_conv2d_readvariableop_resource: 7
)conv2d_30_biasadd_readvariableop_resource:B
(conv2d_31_conv2d_readvariableop_resource:7
)conv2d_31_biasadd_readvariableop_resource:
identity¢ conv2d_28/BiasAdd/ReadVariableOp¢conv2d_28/Conv2D/ReadVariableOp¢ conv2d_29/BiasAdd/ReadVariableOp¢conv2d_29/Conv2D/ReadVariableOp¢ conv2d_30/BiasAdd/ReadVariableOp¢conv2d_30/Conv2D/ReadVariableOp¢ conv2d_31/BiasAdd/ReadVariableOp¢conv2d_31/Conv2D/ReadVariableOpg
up_sampling2d_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_12/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_12/mulMulup_sampling2d_12/Const:output:0!up_sampling2d_12/Const_1:output:0*
T0*
_output_shapes
:¼
-up_sampling2d_12/resize/ResizeNearestNeighborResizeNearestNeighborinputsup_sampling2d_12/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
half_pixel_centers(
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0å
conv2d_28/Conv2DConv2D>up_sampling2d_12/resize/ResizeNearestNeighbor:resized_images:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
paddingSAME*
strides

 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@l
conv2d_28/ReluReluconv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@g
up_sampling2d_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"
   
   i
up_sampling2d_13/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_13/mulMulup_sampling2d_13/Const:output:0!up_sampling2d_13/Const_1:output:0*
T0*
_output_shapes
:Ò
-up_sampling2d_13/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_28/Relu:activations:0up_sampling2d_13/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers(
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0å
conv2d_29/Conv2DConv2D>up_sampling2d_13/resize/ResizeNearestNeighbor:resized_images:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides

 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ l
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
up_sampling2d_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_14/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_14/mulMulup_sampling2d_14/Const:output:0!up_sampling2d_14/Const_1:output:0*
T0*
_output_shapes
:Ò
-up_sampling2d_14/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_29/Relu:activations:0up_sampling2d_14/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
half_pixel_centers(
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0å
conv2d_30/Conv2DConv2D>up_sampling2d_14/resize/ResizeNearestNeighbor:resized_images:0'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides

 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((l
conv2d_30/ReluReluconv2d_30/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((g
up_sampling2d_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"(   (   i
up_sampling2d_15/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_15/mulMulup_sampling2d_15/Const:output:0!up_sampling2d_15/Const_1:output:0*
T0*
_output_shapes
:Ò
-up_sampling2d_15/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_30/Relu:activations:0up_sampling2d_15/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
half_pixel_centers(
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0å
conv2d_31/Conv2DConv2D>up_sampling2d_15/resize/ResizeNearestNeighbor:resized_images:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
paddingSAME*
strides

 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPr
conv2d_31/SigmoidSigmoidconv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPl
IdentityIdentityconv2d_31/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPÚ
NoOpNoOp!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2D
 conv2d_30/BiasAdd/ReadVariableOp conv2d_30/BiasAdd/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2D
 conv2d_31/BiasAdd/ReadVariableOp conv2d_31/BiasAdd/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
£
Ä
"__inference_AE_layer_call_fn_24241

inputs!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:
À
	unknown_8:	
	unknown_9:
À

unknown_10:	À$

unknown_11:@@

unknown_12:@$

unknown_13:@ 

unknown_14: $

unknown_15: 

unknown_16:$

unknown_17:

unknown_18:
identity¢StatefulPartitionedCallÐ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *F
fAR?
=__inference_AE_layer_call_and_return_conditional_losses_23664w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
ð
ý
D__inference_conv2d_30_layer_call_and_return_conditional_losses_23252

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿj
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¾F
´
B__inference_decoder_layer_call_and_return_conditional_losses_23645
zO
5sequential_7_conv2d_28_conv2d_readvariableop_resource:@@D
6sequential_7_conv2d_28_biasadd_readvariableop_resource:@O
5sequential_7_conv2d_29_conv2d_readvariableop_resource:@ D
6sequential_7_conv2d_29_biasadd_readvariableop_resource: O
5sequential_7_conv2d_30_conv2d_readvariableop_resource: D
6sequential_7_conv2d_30_biasadd_readvariableop_resource:O
5sequential_7_conv2d_31_conv2d_readvariableop_resource:D
6sequential_7_conv2d_31_biasadd_readvariableop_resource:
identity¢-sequential_7/conv2d_28/BiasAdd/ReadVariableOp¢,sequential_7/conv2d_28/Conv2D/ReadVariableOp¢-sequential_7/conv2d_29/BiasAdd/ReadVariableOp¢,sequential_7/conv2d_29/Conv2D/ReadVariableOp¢-sequential_7/conv2d_30/BiasAdd/ReadVariableOp¢,sequential_7/conv2d_30/Conv2D/ReadVariableOp¢-sequential_7/conv2d_31/BiasAdd/ReadVariableOp¢,sequential_7/conv2d_31/Conv2D/ReadVariableOpt
#sequential_7/up_sampling2d_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
%sequential_7/up_sampling2d_12/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      «
!sequential_7/up_sampling2d_12/mulMul,sequential_7/up_sampling2d_12/Const:output:0.sequential_7/up_sampling2d_12/Const_1:output:0*
T0*
_output_shapes
:Ñ
:sequential_7/up_sampling2d_12/resize/ResizeNearestNeighborResizeNearestNeighborz%sequential_7/up_sampling2d_12/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
half_pixel_centers(ª
,sequential_7/conv2d_28/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
sequential_7/conv2d_28/Conv2DConv2DKsequential_7/up_sampling2d_12/resize/ResizeNearestNeighbor:resized_images:04sequential_7/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
paddingSAME*
strides
 
-sequential_7/conv2d_28/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Â
sequential_7/conv2d_28/BiasAddBiasAdd&sequential_7/conv2d_28/Conv2D:output:05sequential_7/conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@
sequential_7/conv2d_28/ReluRelu'sequential_7/conv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@t
#sequential_7/up_sampling2d_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"
   
   v
%sequential_7/up_sampling2d_13/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      «
!sequential_7/up_sampling2d_13/mulMul,sequential_7/up_sampling2d_13/Const:output:0.sequential_7/up_sampling2d_13/Const_1:output:0*
T0*
_output_shapes
:ù
:sequential_7/up_sampling2d_13/resize/ResizeNearestNeighborResizeNearestNeighbor)sequential_7/conv2d_28/Relu:activations:0%sequential_7/up_sampling2d_13/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers(ª
,sequential_7/conv2d_29/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0
sequential_7/conv2d_29/Conv2DConv2DKsequential_7/up_sampling2d_13/resize/ResizeNearestNeighbor:resized_images:04sequential_7/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
 
-sequential_7/conv2d_29/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Â
sequential_7/conv2d_29/BiasAddBiasAdd&sequential_7/conv2d_29/Conv2D:output:05sequential_7/conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
sequential_7/conv2d_29/ReluRelu'sequential_7/conv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
#sequential_7/up_sampling2d_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
%sequential_7/up_sampling2d_14/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      «
!sequential_7/up_sampling2d_14/mulMul,sequential_7/up_sampling2d_14/Const:output:0.sequential_7/up_sampling2d_14/Const_1:output:0*
T0*
_output_shapes
:ù
:sequential_7/up_sampling2d_14/resize/ResizeNearestNeighborResizeNearestNeighbor)sequential_7/conv2d_29/Relu:activations:0%sequential_7/up_sampling2d_14/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
half_pixel_centers(ª
,sequential_7/conv2d_30/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
sequential_7/conv2d_30/Conv2DConv2DKsequential_7/up_sampling2d_14/resize/ResizeNearestNeighbor:resized_images:04sequential_7/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
 
-sequential_7/conv2d_30/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Â
sequential_7/conv2d_30/BiasAddBiasAdd&sequential_7/conv2d_30/Conv2D:output:05sequential_7/conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
sequential_7/conv2d_30/ReluRelu'sequential_7/conv2d_30/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((t
#sequential_7/up_sampling2d_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"(   (   v
%sequential_7/up_sampling2d_15/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      «
!sequential_7/up_sampling2d_15/mulMul,sequential_7/up_sampling2d_15/Const:output:0.sequential_7/up_sampling2d_15/Const_1:output:0*
T0*
_output_shapes
:ù
:sequential_7/up_sampling2d_15/resize/ResizeNearestNeighborResizeNearestNeighbor)sequential_7/conv2d_30/Relu:activations:0%sequential_7/up_sampling2d_15/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
half_pixel_centers(ª
,sequential_7/conv2d_31/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
sequential_7/conv2d_31/Conv2DConv2DKsequential_7/up_sampling2d_15/resize/ResizeNearestNeighbor:resized_images:04sequential_7/conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
paddingSAME*
strides
 
-sequential_7/conv2d_31/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Â
sequential_7/conv2d_31/BiasAddBiasAdd&sequential_7/conv2d_31/Conv2D:output:05sequential_7/conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
sequential_7/conv2d_31/SigmoidSigmoid'sequential_7/conv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPy
IdentityIdentity"sequential_7/conv2d_31/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPÂ
NoOpNoOp.^sequential_7/conv2d_28/BiasAdd/ReadVariableOp-^sequential_7/conv2d_28/Conv2D/ReadVariableOp.^sequential_7/conv2d_29/BiasAdd/ReadVariableOp-^sequential_7/conv2d_29/Conv2D/ReadVariableOp.^sequential_7/conv2d_30/BiasAdd/ReadVariableOp-^sequential_7/conv2d_30/Conv2D/ReadVariableOp.^sequential_7/conv2d_31/BiasAdd/ReadVariableOp-^sequential_7/conv2d_31/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2^
-sequential_7/conv2d_28/BiasAdd/ReadVariableOp-sequential_7/conv2d_28/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_28/Conv2D/ReadVariableOp,sequential_7/conv2d_28/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_29/BiasAdd/ReadVariableOp-sequential_7/conv2d_29/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_29/Conv2D/ReadVariableOp,sequential_7/conv2d_29/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_30/BiasAdd/ReadVariableOp-sequential_7/conv2d_30/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_30/Conv2D/ReadVariableOp,sequential_7/conv2d_30/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_31/BiasAdd/ReadVariableOp-sequential_7/conv2d_31/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_31/Conv2D/ReadVariableOp,sequential_7/conv2d_31/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@

_user_specified_namez
´!

=__inference_AE_layer_call_and_return_conditional_losses_24002

inputs'
encoder_23955:	
encoder_23957:	'
encoder_23959:	
encoder_23961:'
encoder_23963: 
encoder_23965: '
encoder_23967: @
encoder_23969:@!
dense_6_23973:
À
dense_6_23975:	!
dense_7_23978:
À
dense_7_23980:	À'
decoder_23984:@@
decoder_23986:@'
decoder_23988:@ 
decoder_23990: '
decoder_23992: 
decoder_23994:'
decoder_23996:
decoder_23998:
identity¢decoder/StatefulPartitionedCall¢dense_6/StatefulPartitionedCall¢dense_7/StatefulPartitionedCall¢encoder/StatefulPartitionedCallÚ
encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_23955encoder_23957encoder_23959encoder_23961encoder_23963encoder_23965encoder_23967encoder_23969*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_23886ß
flatten_3/PartitionedCallPartitionedCall(encoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_23546
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_23973dense_6_23975*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_23558
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_23978dense_7_23980*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_23575æ
reshape_3/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_reshape_3_layer_call_and_return_conditional_losses_23595ö
decoder/StatefulPartitionedCallStatefulPartitionedCall"reshape_3/PartitionedCall:output:0decoder_23984decoder_23986decoder_23988decoder_23990decoder_23992decoder_23994decoder_23996decoder_23998*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_23779
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPÎ
NoOpNoOp ^decoder/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
î	
Ñ
'__inference_decoder_layer_call_fn_24752
z!
unknown:@@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallzunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_23779w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@

_user_specified_namez
¥

ö
B__inference_dense_7_layer_call_and_return_conditional_losses_24691

inputs2
matmul_readvariableop_resource:
À.
biasadd_readvariableop_resource:	À
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý	
Ö
'__inference_encoder_layer_call_fn_24577

inputs!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
identity¢StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_23886w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
²
E
)__inference_reshape_3_layer_call_fn_24696

inputs
identityº
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_reshape_3_layer_call_and_return_conditional_losses_23595h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs

ý
D__inference_conv2d_25_layer_call_and_return_conditional_losses_25132

inputs8
conv2d_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ((	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
 
_user_specified_nameinputs

g
K__inference_up_sampling2d_13_layer_call_and_return_conditional_losses_25226

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶

)__inference_conv2d_28_layer_call_fn_25198

inputs!
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_23216
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
î	
Ñ
'__inference_decoder_layer_call_fn_24731
z!
unknown:@@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallzunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_23645w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@

_user_specified_namez
¶

)__inference_conv2d_30_layer_call_fn_25272

inputs!
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_30_layer_call_and_return_conditional_losses_23252
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Í
`
D__inference_reshape_3_layer_call_and_return_conditional_losses_23595

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
¤
ö
=__inference_AE_layer_call_and_return_conditional_losses_24488

inputsW
=encoder_sequential_6_conv2d_24_conv2d_readvariableop_resource:	L
>encoder_sequential_6_conv2d_24_biasadd_readvariableop_resource:	W
=encoder_sequential_6_conv2d_25_conv2d_readvariableop_resource:	L
>encoder_sequential_6_conv2d_25_biasadd_readvariableop_resource:W
=encoder_sequential_6_conv2d_26_conv2d_readvariableop_resource: L
>encoder_sequential_6_conv2d_26_biasadd_readvariableop_resource: W
=encoder_sequential_6_conv2d_27_conv2d_readvariableop_resource: @L
>encoder_sequential_6_conv2d_27_biasadd_readvariableop_resource:@:
&dense_6_matmul_readvariableop_resource:
À6
'dense_6_biasadd_readvariableop_resource:	:
&dense_7_matmul_readvariableop_resource:
À6
'dense_7_biasadd_readvariableop_resource:	ÀW
=decoder_sequential_7_conv2d_28_conv2d_readvariableop_resource:@@L
>decoder_sequential_7_conv2d_28_biasadd_readvariableop_resource:@W
=decoder_sequential_7_conv2d_29_conv2d_readvariableop_resource:@ L
>decoder_sequential_7_conv2d_29_biasadd_readvariableop_resource: W
=decoder_sequential_7_conv2d_30_conv2d_readvariableop_resource: L
>decoder_sequential_7_conv2d_30_biasadd_readvariableop_resource:W
=decoder_sequential_7_conv2d_31_conv2d_readvariableop_resource:L
>decoder_sequential_7_conv2d_31_biasadd_readvariableop_resource:
identity¢5decoder/sequential_7/conv2d_28/BiasAdd/ReadVariableOp¢4decoder/sequential_7/conv2d_28/Conv2D/ReadVariableOp¢5decoder/sequential_7/conv2d_29/BiasAdd/ReadVariableOp¢4decoder/sequential_7/conv2d_29/Conv2D/ReadVariableOp¢5decoder/sequential_7/conv2d_30/BiasAdd/ReadVariableOp¢4decoder/sequential_7/conv2d_30/Conv2D/ReadVariableOp¢5decoder/sequential_7/conv2d_31/BiasAdd/ReadVariableOp¢4decoder/sequential_7/conv2d_31/Conv2D/ReadVariableOp¢dense_6/BiasAdd/ReadVariableOp¢dense_6/MatMul/ReadVariableOp¢dense_7/BiasAdd/ReadVariableOp¢dense_7/MatMul/ReadVariableOp¢5encoder/sequential_6/conv2d_24/BiasAdd/ReadVariableOp¢4encoder/sequential_6/conv2d_24/Conv2D/ReadVariableOp¢5encoder/sequential_6/conv2d_25/BiasAdd/ReadVariableOp¢4encoder/sequential_6/conv2d_25/Conv2D/ReadVariableOp¢5encoder/sequential_6/conv2d_26/BiasAdd/ReadVariableOp¢4encoder/sequential_6/conv2d_26/Conv2D/ReadVariableOp¢5encoder/sequential_6/conv2d_27/BiasAdd/ReadVariableOp¢4encoder/sequential_6/conv2d_27/Conv2D/ReadVariableOpº
4encoder/sequential_6/conv2d_24/Conv2D/ReadVariableOpReadVariableOp=encoder_sequential_6_conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0×
%encoder/sequential_6/conv2d_24/Conv2DConv2Dinputs<encoder/sequential_6/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides
°
5encoder/sequential_6/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp>encoder_sequential_6_conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0Ú
&encoder/sequential_6/conv2d_24/BiasAddBiasAdd.encoder/sequential_6/conv2d_24/Conv2D:output:0=encoder/sequential_6/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
#encoder/sequential_6/conv2d_24/ReluRelu/encoder/sequential_6/conv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	º
4encoder/sequential_6/conv2d_25/Conv2D/ReadVariableOpReadVariableOp=encoder_sequential_6_conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0
%encoder/sequential_6/conv2d_25/Conv2DConv2D1encoder/sequential_6/conv2d_24/Relu:activations:0<encoder/sequential_6/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
°
5encoder/sequential_6/conv2d_25/BiasAdd/ReadVariableOpReadVariableOp>encoder_sequential_6_conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ú
&encoder/sequential_6/conv2d_25/BiasAddBiasAdd.encoder/sequential_6/conv2d_25/Conv2D:output:0=encoder/sequential_6/conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#encoder/sequential_6/conv2d_25/ReluRelu/encoder/sequential_6/conv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
4encoder/sequential_6/conv2d_26/Conv2D/ReadVariableOpReadVariableOp=encoder_sequential_6_conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
%encoder/sequential_6/conv2d_26/Conv2DConv2D1encoder/sequential_6/conv2d_25/Relu:activations:0<encoder/sequential_6/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides
°
5encoder/sequential_6/conv2d_26/BiasAdd/ReadVariableOpReadVariableOp>encoder_sequential_6_conv2d_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ú
&encoder/sequential_6/conv2d_26/BiasAddBiasAdd.encoder/sequential_6/conv2d_26/Conv2D:output:0=encoder/sequential_6/conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
#encoder/sequential_6/conv2d_26/ReluRelu/encoder/sequential_6/conv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 º
4encoder/sequential_6/conv2d_27/Conv2D/ReadVariableOpReadVariableOp=encoder_sequential_6_conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
%encoder/sequential_6/conv2d_27/Conv2DConv2D1encoder/sequential_6/conv2d_26/Relu:activations:0<encoder/sequential_6/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
°
5encoder/sequential_6/conv2d_27/BiasAdd/ReadVariableOpReadVariableOp>encoder_sequential_6_conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ú
&encoder/sequential_6/conv2d_27/BiasAddBiasAdd.encoder/sequential_6/conv2d_27/Conv2D:output:0=encoder/sequential_6/conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#encoder/sequential_6/conv2d_27/ReluRelu/encoder/sequential_6/conv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  
flatten_3/ReshapeReshape1encoder/sequential_6/conv2d_27/Relu:activations:0flatten_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0
dense_7/MatMulMatMuldense_6/BiasAdd:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀa
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀY
reshape_3/ShapeShapedense_7/Relu:activations:0*
T0*
_output_shapes
:g
reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_3/strided_sliceStridedSlicereshape_3/Shape:output:0&reshape_3/strided_slice/stack:output:0(reshape_3/strided_slice/stack_1:output:0(reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@Û
reshape_3/Reshape/shapePack reshape_3/strided_slice:output:0"reshape_3/Reshape/shape/1:output:0"reshape_3/Reshape/shape/2:output:0"reshape_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
reshape_3/ReshapeReshapedense_7/Relu:activations:0 reshape_3/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
+decoder/sequential_7/up_sampling2d_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"      ~
-decoder/sequential_7/up_sampling2d_12/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ã
)decoder/sequential_7/up_sampling2d_12/mulMul4decoder/sequential_7/up_sampling2d_12/Const:output:06decoder/sequential_7/up_sampling2d_12/Const_1:output:0*
T0*
_output_shapes
:ú
Bdecoder/sequential_7/up_sampling2d_12/resize/ResizeNearestNeighborResizeNearestNeighborreshape_3/Reshape:output:0-decoder/sequential_7/up_sampling2d_12/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
half_pixel_centers(º
4decoder/sequential_7/conv2d_28/Conv2D/ReadVariableOpReadVariableOp=decoder_sequential_7_conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0¤
%decoder/sequential_7/conv2d_28/Conv2DConv2DSdecoder/sequential_7/up_sampling2d_12/resize/ResizeNearestNeighbor:resized_images:0<decoder/sequential_7/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
paddingSAME*
strides
°
5decoder/sequential_7/conv2d_28/BiasAdd/ReadVariableOpReadVariableOp>decoder_sequential_7_conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ú
&decoder/sequential_7/conv2d_28/BiasAddBiasAdd.decoder/sequential_7/conv2d_28/Conv2D:output:0=decoder/sequential_7/conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@
#decoder/sequential_7/conv2d_28/ReluRelu/decoder/sequential_7/conv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@|
+decoder/sequential_7/up_sampling2d_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"
   
   ~
-decoder/sequential_7/up_sampling2d_13/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ã
)decoder/sequential_7/up_sampling2d_13/mulMul4decoder/sequential_7/up_sampling2d_13/Const:output:06decoder/sequential_7/up_sampling2d_13/Const_1:output:0*
T0*
_output_shapes
:
Bdecoder/sequential_7/up_sampling2d_13/resize/ResizeNearestNeighborResizeNearestNeighbor1decoder/sequential_7/conv2d_28/Relu:activations:0-decoder/sequential_7/up_sampling2d_13/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers(º
4decoder/sequential_7/conv2d_29/Conv2D/ReadVariableOpReadVariableOp=decoder_sequential_7_conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0¤
%decoder/sequential_7/conv2d_29/Conv2DConv2DSdecoder/sequential_7/up_sampling2d_13/resize/ResizeNearestNeighbor:resized_images:0<decoder/sequential_7/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
°
5decoder/sequential_7/conv2d_29/BiasAdd/ReadVariableOpReadVariableOp>decoder_sequential_7_conv2d_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ú
&decoder/sequential_7/conv2d_29/BiasAddBiasAdd.decoder/sequential_7/conv2d_29/Conv2D:output:0=decoder/sequential_7/conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#decoder/sequential_7/conv2d_29/ReluRelu/decoder/sequential_7/conv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
+decoder/sequential_7/up_sampling2d_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"      ~
-decoder/sequential_7/up_sampling2d_14/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ã
)decoder/sequential_7/up_sampling2d_14/mulMul4decoder/sequential_7/up_sampling2d_14/Const:output:06decoder/sequential_7/up_sampling2d_14/Const_1:output:0*
T0*
_output_shapes
:
Bdecoder/sequential_7/up_sampling2d_14/resize/ResizeNearestNeighborResizeNearestNeighbor1decoder/sequential_7/conv2d_29/Relu:activations:0-decoder/sequential_7/up_sampling2d_14/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
half_pixel_centers(º
4decoder/sequential_7/conv2d_30/Conv2D/ReadVariableOpReadVariableOp=decoder_sequential_7_conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0¤
%decoder/sequential_7/conv2d_30/Conv2DConv2DSdecoder/sequential_7/up_sampling2d_14/resize/ResizeNearestNeighbor:resized_images:0<decoder/sequential_7/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
°
5decoder/sequential_7/conv2d_30/BiasAdd/ReadVariableOpReadVariableOp>decoder_sequential_7_conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ú
&decoder/sequential_7/conv2d_30/BiasAddBiasAdd.decoder/sequential_7/conv2d_30/Conv2D:output:0=decoder/sequential_7/conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
#decoder/sequential_7/conv2d_30/ReluRelu/decoder/sequential_7/conv2d_30/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((|
+decoder/sequential_7/up_sampling2d_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"(   (   ~
-decoder/sequential_7/up_sampling2d_15/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ã
)decoder/sequential_7/up_sampling2d_15/mulMul4decoder/sequential_7/up_sampling2d_15/Const:output:06decoder/sequential_7/up_sampling2d_15/Const_1:output:0*
T0*
_output_shapes
:
Bdecoder/sequential_7/up_sampling2d_15/resize/ResizeNearestNeighborResizeNearestNeighbor1decoder/sequential_7/conv2d_30/Relu:activations:0-decoder/sequential_7/up_sampling2d_15/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
half_pixel_centers(º
4decoder/sequential_7/conv2d_31/Conv2D/ReadVariableOpReadVariableOp=decoder_sequential_7_conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¤
%decoder/sequential_7/conv2d_31/Conv2DConv2DSdecoder/sequential_7/up_sampling2d_15/resize/ResizeNearestNeighbor:resized_images:0<decoder/sequential_7/conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
paddingSAME*
strides
°
5decoder/sequential_7/conv2d_31/BiasAdd/ReadVariableOpReadVariableOp>decoder_sequential_7_conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ú
&decoder/sequential_7/conv2d_31/BiasAddBiasAdd.decoder/sequential_7/conv2d_31/Conv2D:output:0=decoder/sequential_7/conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
&decoder/sequential_7/conv2d_31/SigmoidSigmoid/decoder/sequential_7/conv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
IdentityIdentity*decoder/sequential_7/conv2d_31/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPÀ
NoOpNoOp6^decoder/sequential_7/conv2d_28/BiasAdd/ReadVariableOp5^decoder/sequential_7/conv2d_28/Conv2D/ReadVariableOp6^decoder/sequential_7/conv2d_29/BiasAdd/ReadVariableOp5^decoder/sequential_7/conv2d_29/Conv2D/ReadVariableOp6^decoder/sequential_7/conv2d_30/BiasAdd/ReadVariableOp5^decoder/sequential_7/conv2d_30/Conv2D/ReadVariableOp6^decoder/sequential_7/conv2d_31/BiasAdd/ReadVariableOp5^decoder/sequential_7/conv2d_31/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp6^encoder/sequential_6/conv2d_24/BiasAdd/ReadVariableOp5^encoder/sequential_6/conv2d_24/Conv2D/ReadVariableOp6^encoder/sequential_6/conv2d_25/BiasAdd/ReadVariableOp5^encoder/sequential_6/conv2d_25/Conv2D/ReadVariableOp6^encoder/sequential_6/conv2d_26/BiasAdd/ReadVariableOp5^encoder/sequential_6/conv2d_26/Conv2D/ReadVariableOp6^encoder/sequential_6/conv2d_27/BiasAdd/ReadVariableOp5^encoder/sequential_6/conv2d_27/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : 2n
5decoder/sequential_7/conv2d_28/BiasAdd/ReadVariableOp5decoder/sequential_7/conv2d_28/BiasAdd/ReadVariableOp2l
4decoder/sequential_7/conv2d_28/Conv2D/ReadVariableOp4decoder/sequential_7/conv2d_28/Conv2D/ReadVariableOp2n
5decoder/sequential_7/conv2d_29/BiasAdd/ReadVariableOp5decoder/sequential_7/conv2d_29/BiasAdd/ReadVariableOp2l
4decoder/sequential_7/conv2d_29/Conv2D/ReadVariableOp4decoder/sequential_7/conv2d_29/Conv2D/ReadVariableOp2n
5decoder/sequential_7/conv2d_30/BiasAdd/ReadVariableOp5decoder/sequential_7/conv2d_30/BiasAdd/ReadVariableOp2l
4decoder/sequential_7/conv2d_30/Conv2D/ReadVariableOp4decoder/sequential_7/conv2d_30/Conv2D/ReadVariableOp2n
5decoder/sequential_7/conv2d_31/BiasAdd/ReadVariableOp5decoder/sequential_7/conv2d_31/BiasAdd/ReadVariableOp2l
4decoder/sequential_7/conv2d_31/Conv2D/ReadVariableOp4decoder/sequential_7/conv2d_31/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2n
5encoder/sequential_6/conv2d_24/BiasAdd/ReadVariableOp5encoder/sequential_6/conv2d_24/BiasAdd/ReadVariableOp2l
4encoder/sequential_6/conv2d_24/Conv2D/ReadVariableOp4encoder/sequential_6/conv2d_24/Conv2D/ReadVariableOp2n
5encoder/sequential_6/conv2d_25/BiasAdd/ReadVariableOp5encoder/sequential_6/conv2d_25/BiasAdd/ReadVariableOp2l
4encoder/sequential_6/conv2d_25/Conv2D/ReadVariableOp4encoder/sequential_6/conv2d_25/Conv2D/ReadVariableOp2n
5encoder/sequential_6/conv2d_26/BiasAdd/ReadVariableOp5encoder/sequential_6/conv2d_26/BiasAdd/ReadVariableOp2l
4encoder/sequential_6/conv2d_26/Conv2D/ReadVariableOp4encoder/sequential_6/conv2d_26/Conv2D/ReadVariableOp2n
5encoder/sequential_6/conv2d_27/BiasAdd/ReadVariableOp5encoder/sequential_6/conv2d_27/BiasAdd/ReadVariableOp2l
4encoder/sequential_6/conv2d_27/Conv2D/ReadVariableOp4encoder/sequential_6/conv2d_27/Conv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
í

)__inference_conv2d_27_layer_call_fn_25161

inputs!
unknown: @
	unknown_0:@
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_22920w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ

 : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
 
_user_specified_nameinputs
»
L
0__inference_up_sampling2d_14_layer_call_fn_25251

inputs
identityÜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_14_layer_call_and_return_conditional_losses_23175
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶

)__inference_conv2d_31_layer_call_fn_25309

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_31_layer_call_and_return_conditional_losses_23270
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ý
D__inference_conv2d_27_layer_call_and_return_conditional_losses_22920

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ

 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
 
_user_specified_nameinputs
è

G__inference_sequential_6_layer_call_and_return_conditional_losses_23033

inputs)
conv2d_24_23012:	
conv2d_24_23014:	)
conv2d_25_23017:	
conv2d_25_23019:)
conv2d_26_23022: 
conv2d_26_23024: )
conv2d_27_23027: @
conv2d_27_23029:@
identity¢!conv2d_24/StatefulPartitionedCall¢!conv2d_25/StatefulPartitionedCall¢!conv2d_26/StatefulPartitionedCall¢!conv2d_27/StatefulPartitionedCallü
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_24_23012conv2d_24_23014*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_22869 
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0conv2d_25_23017conv2d_25_23019*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_22886 
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0conv2d_26_23022conv2d_26_23024*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_26_layer_call_and_return_conditional_losses_22903 
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0conv2d_27_23027conv2d_27_23029*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_22920
IdentityIdentity*conv2d_27/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ö
NoOpNoOp"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
¾F
´
B__inference_decoder_layer_call_and_return_conditional_losses_24800
zO
5sequential_7_conv2d_28_conv2d_readvariableop_resource:@@D
6sequential_7_conv2d_28_biasadd_readvariableop_resource:@O
5sequential_7_conv2d_29_conv2d_readvariableop_resource:@ D
6sequential_7_conv2d_29_biasadd_readvariableop_resource: O
5sequential_7_conv2d_30_conv2d_readvariableop_resource: D
6sequential_7_conv2d_30_biasadd_readvariableop_resource:O
5sequential_7_conv2d_31_conv2d_readvariableop_resource:D
6sequential_7_conv2d_31_biasadd_readvariableop_resource:
identity¢-sequential_7/conv2d_28/BiasAdd/ReadVariableOp¢,sequential_7/conv2d_28/Conv2D/ReadVariableOp¢-sequential_7/conv2d_29/BiasAdd/ReadVariableOp¢,sequential_7/conv2d_29/Conv2D/ReadVariableOp¢-sequential_7/conv2d_30/BiasAdd/ReadVariableOp¢,sequential_7/conv2d_30/Conv2D/ReadVariableOp¢-sequential_7/conv2d_31/BiasAdd/ReadVariableOp¢,sequential_7/conv2d_31/Conv2D/ReadVariableOpt
#sequential_7/up_sampling2d_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
%sequential_7/up_sampling2d_12/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      «
!sequential_7/up_sampling2d_12/mulMul,sequential_7/up_sampling2d_12/Const:output:0.sequential_7/up_sampling2d_12/Const_1:output:0*
T0*
_output_shapes
:Ñ
:sequential_7/up_sampling2d_12/resize/ResizeNearestNeighborResizeNearestNeighborz%sequential_7/up_sampling2d_12/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
half_pixel_centers(ª
,sequential_7/conv2d_28/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
sequential_7/conv2d_28/Conv2DConv2DKsequential_7/up_sampling2d_12/resize/ResizeNearestNeighbor:resized_images:04sequential_7/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
paddingSAME*
strides
 
-sequential_7/conv2d_28/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Â
sequential_7/conv2d_28/BiasAddBiasAdd&sequential_7/conv2d_28/Conv2D:output:05sequential_7/conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@
sequential_7/conv2d_28/ReluRelu'sequential_7/conv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@t
#sequential_7/up_sampling2d_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"
   
   v
%sequential_7/up_sampling2d_13/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      «
!sequential_7/up_sampling2d_13/mulMul,sequential_7/up_sampling2d_13/Const:output:0.sequential_7/up_sampling2d_13/Const_1:output:0*
T0*
_output_shapes
:ù
:sequential_7/up_sampling2d_13/resize/ResizeNearestNeighborResizeNearestNeighbor)sequential_7/conv2d_28/Relu:activations:0%sequential_7/up_sampling2d_13/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers(ª
,sequential_7/conv2d_29/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0
sequential_7/conv2d_29/Conv2DConv2DKsequential_7/up_sampling2d_13/resize/ResizeNearestNeighbor:resized_images:04sequential_7/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
 
-sequential_7/conv2d_29/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Â
sequential_7/conv2d_29/BiasAddBiasAdd&sequential_7/conv2d_29/Conv2D:output:05sequential_7/conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
sequential_7/conv2d_29/ReluRelu'sequential_7/conv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
#sequential_7/up_sampling2d_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
%sequential_7/up_sampling2d_14/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      «
!sequential_7/up_sampling2d_14/mulMul,sequential_7/up_sampling2d_14/Const:output:0.sequential_7/up_sampling2d_14/Const_1:output:0*
T0*
_output_shapes
:ù
:sequential_7/up_sampling2d_14/resize/ResizeNearestNeighborResizeNearestNeighbor)sequential_7/conv2d_29/Relu:activations:0%sequential_7/up_sampling2d_14/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
half_pixel_centers(ª
,sequential_7/conv2d_30/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
sequential_7/conv2d_30/Conv2DConv2DKsequential_7/up_sampling2d_14/resize/ResizeNearestNeighbor:resized_images:04sequential_7/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
 
-sequential_7/conv2d_30/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Â
sequential_7/conv2d_30/BiasAddBiasAdd&sequential_7/conv2d_30/Conv2D:output:05sequential_7/conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
sequential_7/conv2d_30/ReluRelu'sequential_7/conv2d_30/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((t
#sequential_7/up_sampling2d_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"(   (   v
%sequential_7/up_sampling2d_15/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      «
!sequential_7/up_sampling2d_15/mulMul,sequential_7/up_sampling2d_15/Const:output:0.sequential_7/up_sampling2d_15/Const_1:output:0*
T0*
_output_shapes
:ù
:sequential_7/up_sampling2d_15/resize/ResizeNearestNeighborResizeNearestNeighbor)sequential_7/conv2d_30/Relu:activations:0%sequential_7/up_sampling2d_15/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
half_pixel_centers(ª
,sequential_7/conv2d_31/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
sequential_7/conv2d_31/Conv2DConv2DKsequential_7/up_sampling2d_15/resize/ResizeNearestNeighbor:resized_images:04sequential_7/conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
paddingSAME*
strides
 
-sequential_7/conv2d_31/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Â
sequential_7/conv2d_31/BiasAddBiasAdd&sequential_7/conv2d_31/Conv2D:output:05sequential_7/conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
sequential_7/conv2d_31/SigmoidSigmoid'sequential_7/conv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPy
IdentityIdentity"sequential_7/conv2d_31/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPÂ
NoOpNoOp.^sequential_7/conv2d_28/BiasAdd/ReadVariableOp-^sequential_7/conv2d_28/Conv2D/ReadVariableOp.^sequential_7/conv2d_29/BiasAdd/ReadVariableOp-^sequential_7/conv2d_29/Conv2D/ReadVariableOp.^sequential_7/conv2d_30/BiasAdd/ReadVariableOp-^sequential_7/conv2d_30/Conv2D/ReadVariableOp.^sequential_7/conv2d_31/BiasAdd/ReadVariableOp-^sequential_7/conv2d_31/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2^
-sequential_7/conv2d_28/BiasAdd/ReadVariableOp-sequential_7/conv2d_28/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_28/Conv2D/ReadVariableOp,sequential_7/conv2d_28/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_29/BiasAdd/ReadVariableOp-sequential_7/conv2d_29/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_29/Conv2D/ReadVariableOp,sequential_7/conv2d_29/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_30/BiasAdd/ReadVariableOp-sequential_7/conv2d_30/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_30/Conv2D/ReadVariableOp,sequential_7/conv2d_30/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_31/BiasAdd/ReadVariableOp-sequential_7/conv2d_31/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_31/Conv2D/ReadVariableOp,sequential_7/conv2d_31/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@

_user_specified_namez

§
G__inference_sequential_6_layer_call_and_return_conditional_losses_23097
conv2d_24_input)
conv2d_24_23076:	
conv2d_24_23078:	)
conv2d_25_23081:	
conv2d_25_23083:)
conv2d_26_23086: 
conv2d_26_23088: )
conv2d_27_23091: @
conv2d_27_23093:@
identity¢!conv2d_24/StatefulPartitionedCall¢!conv2d_25/StatefulPartitionedCall¢!conv2d_26/StatefulPartitionedCall¢!conv2d_27/StatefulPartitionedCall
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCallconv2d_24_inputconv2d_24_23076conv2d_24_23078*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_22869 
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0conv2d_25_23081conv2d_25_23083*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_22886 
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0conv2d_26_23086conv2d_26_23088*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_26_layer_call_and_return_conditional_losses_22903 
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0conv2d_27_23091conv2d_27_23093*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_22920
IdentityIdentity*conv2d_27/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ö
NoOpNoOp"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall:` \
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
)
_user_specified_nameconv2d_24_input
¬

Û
,__inference_sequential_7_layer_call_fn_24975

inputs!
unknown:@@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCallÇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_23277
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

g
K__inference_up_sampling2d_13_layer_call_and_return_conditional_losses_23156

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð$
 
G__inference_sequential_7_layer_call_and_return_conditional_losses_23483
input_10)
conv2d_28_23459:@@
conv2d_28_23461:@)
conv2d_29_23465:@ 
conv2d_29_23467: )
conv2d_30_23471: 
conv2d_30_23473:)
conv2d_31_23477:
conv2d_31_23479:
identity¢!conv2d_28/StatefulPartitionedCall¢!conv2d_29/StatefulPartitionedCall¢!conv2d_30/StatefulPartitionedCall¢!conv2d_31/StatefulPartitionedCallæ
 up_sampling2d_12/PartitionedCallPartitionedCallinput_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_12_layer_call_and_return_conditional_losses_23137±
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_12/PartitionedCall:output:0conv2d_28_23459conv2d_28_23461*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_23216
 up_sampling2d_13/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_13_layer_call_and_return_conditional_losses_23156±
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_13/PartitionedCall:output:0conv2d_29_23465conv2d_29_23467*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_23234
 up_sampling2d_14/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_14_layer_call_and_return_conditional_losses_23175±
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_14/PartitionedCall:output:0conv2d_30_23471conv2d_30_23473*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_30_layer_call_and_return_conditional_losses_23252
 up_sampling2d_15/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_15_layer_call_and_return_conditional_losses_23194±
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_15/PartitionedCall:output:0conv2d_31_23477conv2d_31_23479*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_31_layer_call_and_return_conditional_losses_23270
IdentityIdentity*conv2d_31/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÖ
NoOpNoOp"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
input_10
ç0
¹
B__inference_encoder_layer_call_and_return_conditional_losses_24641

inputsO
5sequential_6_conv2d_24_conv2d_readvariableop_resource:	D
6sequential_6_conv2d_24_biasadd_readvariableop_resource:	O
5sequential_6_conv2d_25_conv2d_readvariableop_resource:	D
6sequential_6_conv2d_25_biasadd_readvariableop_resource:O
5sequential_6_conv2d_26_conv2d_readvariableop_resource: D
6sequential_6_conv2d_26_biasadd_readvariableop_resource: O
5sequential_6_conv2d_27_conv2d_readvariableop_resource: @D
6sequential_6_conv2d_27_biasadd_readvariableop_resource:@
identity¢-sequential_6/conv2d_24/BiasAdd/ReadVariableOp¢,sequential_6/conv2d_24/Conv2D/ReadVariableOp¢-sequential_6/conv2d_25/BiasAdd/ReadVariableOp¢,sequential_6/conv2d_25/Conv2D/ReadVariableOp¢-sequential_6/conv2d_26/BiasAdd/ReadVariableOp¢,sequential_6/conv2d_26/Conv2D/ReadVariableOp¢-sequential_6/conv2d_27/BiasAdd/ReadVariableOp¢,sequential_6/conv2d_27/Conv2D/ReadVariableOpª
,sequential_6/conv2d_24/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0Ç
sequential_6/conv2d_24/Conv2DConv2Dinputs4sequential_6/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides
 
-sequential_6/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0Â
sequential_6/conv2d_24/BiasAddBiasAdd&sequential_6/conv2d_24/Conv2D:output:05sequential_6/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
sequential_6/conv2d_24/ReluRelu'sequential_6/conv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	ª
,sequential_6/conv2d_25/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0ê
sequential_6/conv2d_25/Conv2DConv2D)sequential_6/conv2d_24/Relu:activations:04sequential_6/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
 
-sequential_6/conv2d_25/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Â
sequential_6/conv2d_25/BiasAddBiasAdd&sequential_6/conv2d_25/Conv2D:output:05sequential_6/conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_6/conv2d_25/ReluRelu'sequential_6/conv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
,sequential_6/conv2d_26/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ê
sequential_6/conv2d_26/Conv2DConv2D)sequential_6/conv2d_25/Relu:activations:04sequential_6/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides
 
-sequential_6/conv2d_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Â
sequential_6/conv2d_26/BiasAddBiasAdd&sequential_6/conv2d_26/Conv2D:output:05sequential_6/conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
sequential_6/conv2d_26/ReluRelu'sequential_6/conv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 ª
,sequential_6/conv2d_27/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ê
sequential_6/conv2d_27/Conv2DConv2D)sequential_6/conv2d_26/Relu:activations:04sequential_6/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
 
-sequential_6/conv2d_27/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Â
sequential_6/conv2d_27/BiasAddBiasAdd&sequential_6/conv2d_27/Conv2D:output:05sequential_6/conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_6/conv2d_27/ReluRelu'sequential_6/conv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
IdentityIdentity)sequential_6/conv2d_27/Relu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
NoOpNoOp.^sequential_6/conv2d_24/BiasAdd/ReadVariableOp-^sequential_6/conv2d_24/Conv2D/ReadVariableOp.^sequential_6/conv2d_25/BiasAdd/ReadVariableOp-^sequential_6/conv2d_25/Conv2D/ReadVariableOp.^sequential_6/conv2d_26/BiasAdd/ReadVariableOp-^sequential_6/conv2d_26/Conv2D/ReadVariableOp.^sequential_6/conv2d_27/BiasAdd/ReadVariableOp-^sequential_6/conv2d_27/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2^
-sequential_6/conv2d_24/BiasAdd/ReadVariableOp-sequential_6/conv2d_24/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_24/Conv2D/ReadVariableOp,sequential_6/conv2d_24/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_25/BiasAdd/ReadVariableOp-sequential_6/conv2d_25/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_25/Conv2D/ReadVariableOp,sequential_6/conv2d_25/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_26/BiasAdd/ReadVariableOp-sequential_6/conv2d_26/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_26/Conv2D/ReadVariableOp,sequential_6/conv2d_26/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_27/BiasAdd/ReadVariableOp-sequential_6/conv2d_27/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_27/Conv2D/ReadVariableOp,sequential_6/conv2d_27/Conv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs

g
K__inference_up_sampling2d_15_layer_call_and_return_conditional_losses_25300

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
ý
D__inference_conv2d_31_layer_call_and_return_conditional_losses_23270

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿp
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿt
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_23546

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ê$

G__inference_sequential_7_layer_call_and_return_conditional_losses_23387

inputs)
conv2d_28_23363:@@
conv2d_28_23365:@)
conv2d_29_23369:@ 
conv2d_29_23371: )
conv2d_30_23375: 
conv2d_30_23377:)
conv2d_31_23381:
conv2d_31_23383:
identity¢!conv2d_28/StatefulPartitionedCall¢!conv2d_29/StatefulPartitionedCall¢!conv2d_30/StatefulPartitionedCall¢!conv2d_31/StatefulPartitionedCallä
 up_sampling2d_12/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_12_layer_call_and_return_conditional_losses_23137±
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_12/PartitionedCall:output:0conv2d_28_23363conv2d_28_23365*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_23216
 up_sampling2d_13/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_13_layer_call_and_return_conditional_losses_23156±
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_13/PartitionedCall:output:0conv2d_29_23369conv2d_29_23371*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_23234
 up_sampling2d_14/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_14_layer_call_and_return_conditional_losses_23175±
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_14/PartitionedCall:output:0conv2d_30_23375conv2d_30_23377*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_30_layer_call_and_return_conditional_losses_23252
 up_sampling2d_15/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_15_layer_call_and_return_conditional_losses_23194±
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_15/PartitionedCall:output:0conv2d_31_23381conv2d_31_23383*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_31_layer_call_and_return_conditional_losses_23270
IdentityIdentity*conv2d_31/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÖ
NoOpNoOp"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ç¢
Ò
 __inference__wrapped_model_22851
input_9Z
@ae_encoder_sequential_6_conv2d_24_conv2d_readvariableop_resource:	O
Aae_encoder_sequential_6_conv2d_24_biasadd_readvariableop_resource:	Z
@ae_encoder_sequential_6_conv2d_25_conv2d_readvariableop_resource:	O
Aae_encoder_sequential_6_conv2d_25_biasadd_readvariableop_resource:Z
@ae_encoder_sequential_6_conv2d_26_conv2d_readvariableop_resource: O
Aae_encoder_sequential_6_conv2d_26_biasadd_readvariableop_resource: Z
@ae_encoder_sequential_6_conv2d_27_conv2d_readvariableop_resource: @O
Aae_encoder_sequential_6_conv2d_27_biasadd_readvariableop_resource:@=
)ae_dense_6_matmul_readvariableop_resource:
À9
*ae_dense_6_biasadd_readvariableop_resource:	=
)ae_dense_7_matmul_readvariableop_resource:
À9
*ae_dense_7_biasadd_readvariableop_resource:	ÀZ
@ae_decoder_sequential_7_conv2d_28_conv2d_readvariableop_resource:@@O
Aae_decoder_sequential_7_conv2d_28_biasadd_readvariableop_resource:@Z
@ae_decoder_sequential_7_conv2d_29_conv2d_readvariableop_resource:@ O
Aae_decoder_sequential_7_conv2d_29_biasadd_readvariableop_resource: Z
@ae_decoder_sequential_7_conv2d_30_conv2d_readvariableop_resource: O
Aae_decoder_sequential_7_conv2d_30_biasadd_readvariableop_resource:Z
@ae_decoder_sequential_7_conv2d_31_conv2d_readvariableop_resource:O
Aae_decoder_sequential_7_conv2d_31_biasadd_readvariableop_resource:
identity¢8AE/decoder/sequential_7/conv2d_28/BiasAdd/ReadVariableOp¢7AE/decoder/sequential_7/conv2d_28/Conv2D/ReadVariableOp¢8AE/decoder/sequential_7/conv2d_29/BiasAdd/ReadVariableOp¢7AE/decoder/sequential_7/conv2d_29/Conv2D/ReadVariableOp¢8AE/decoder/sequential_7/conv2d_30/BiasAdd/ReadVariableOp¢7AE/decoder/sequential_7/conv2d_30/Conv2D/ReadVariableOp¢8AE/decoder/sequential_7/conv2d_31/BiasAdd/ReadVariableOp¢7AE/decoder/sequential_7/conv2d_31/Conv2D/ReadVariableOp¢!AE/dense_6/BiasAdd/ReadVariableOp¢ AE/dense_6/MatMul/ReadVariableOp¢!AE/dense_7/BiasAdd/ReadVariableOp¢ AE/dense_7/MatMul/ReadVariableOp¢8AE/encoder/sequential_6/conv2d_24/BiasAdd/ReadVariableOp¢7AE/encoder/sequential_6/conv2d_24/Conv2D/ReadVariableOp¢8AE/encoder/sequential_6/conv2d_25/BiasAdd/ReadVariableOp¢7AE/encoder/sequential_6/conv2d_25/Conv2D/ReadVariableOp¢8AE/encoder/sequential_6/conv2d_26/BiasAdd/ReadVariableOp¢7AE/encoder/sequential_6/conv2d_26/Conv2D/ReadVariableOp¢8AE/encoder/sequential_6/conv2d_27/BiasAdd/ReadVariableOp¢7AE/encoder/sequential_6/conv2d_27/Conv2D/ReadVariableOpÀ
7AE/encoder/sequential_6/conv2d_24/Conv2D/ReadVariableOpReadVariableOp@ae_encoder_sequential_6_conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0Þ
(AE/encoder/sequential_6/conv2d_24/Conv2DConv2Dinput_9?AE/encoder/sequential_6/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides
¶
8AE/encoder/sequential_6/conv2d_24/BiasAdd/ReadVariableOpReadVariableOpAae_encoder_sequential_6_conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0ã
)AE/encoder/sequential_6/conv2d_24/BiasAddBiasAdd1AE/encoder/sequential_6/conv2d_24/Conv2D:output:0@AE/encoder/sequential_6/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
&AE/encoder/sequential_6/conv2d_24/ReluRelu2AE/encoder/sequential_6/conv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	À
7AE/encoder/sequential_6/conv2d_25/Conv2D/ReadVariableOpReadVariableOp@ae_encoder_sequential_6_conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0
(AE/encoder/sequential_6/conv2d_25/Conv2DConv2D4AE/encoder/sequential_6/conv2d_24/Relu:activations:0?AE/encoder/sequential_6/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
¶
8AE/encoder/sequential_6/conv2d_25/BiasAdd/ReadVariableOpReadVariableOpAae_encoder_sequential_6_conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ã
)AE/encoder/sequential_6/conv2d_25/BiasAddBiasAdd1AE/encoder/sequential_6/conv2d_25/Conv2D:output:0@AE/encoder/sequential_6/conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&AE/encoder/sequential_6/conv2d_25/ReluRelu2AE/encoder/sequential_6/conv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
7AE/encoder/sequential_6/conv2d_26/Conv2D/ReadVariableOpReadVariableOp@ae_encoder_sequential_6_conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
(AE/encoder/sequential_6/conv2d_26/Conv2DConv2D4AE/encoder/sequential_6/conv2d_25/Relu:activations:0?AE/encoder/sequential_6/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides
¶
8AE/encoder/sequential_6/conv2d_26/BiasAdd/ReadVariableOpReadVariableOpAae_encoder_sequential_6_conv2d_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ã
)AE/encoder/sequential_6/conv2d_26/BiasAddBiasAdd1AE/encoder/sequential_6/conv2d_26/Conv2D:output:0@AE/encoder/sequential_6/conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
&AE/encoder/sequential_6/conv2d_26/ReluRelu2AE/encoder/sequential_6/conv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 À
7AE/encoder/sequential_6/conv2d_27/Conv2D/ReadVariableOpReadVariableOp@ae_encoder_sequential_6_conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
(AE/encoder/sequential_6/conv2d_27/Conv2DConv2D4AE/encoder/sequential_6/conv2d_26/Relu:activations:0?AE/encoder/sequential_6/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
¶
8AE/encoder/sequential_6/conv2d_27/BiasAdd/ReadVariableOpReadVariableOpAae_encoder_sequential_6_conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ã
)AE/encoder/sequential_6/conv2d_27/BiasAddBiasAdd1AE/encoder/sequential_6/conv2d_27/Conv2D:output:0@AE/encoder/sequential_6/conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&AE/encoder/sequential_6/conv2d_27/ReluRelu2AE/encoder/sequential_6/conv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
AE/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  ¥
AE/flatten_3/ReshapeReshape4AE/encoder/sequential_6/conv2d_27/Relu:activations:0AE/flatten_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 AE/dense_6/MatMul/ReadVariableOpReadVariableOp)ae_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0
AE/dense_6/MatMulMatMulAE/flatten_3/Reshape:output:0(AE/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!AE/dense_6/BiasAdd/ReadVariableOpReadVariableOp*ae_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
AE/dense_6/BiasAddBiasAddAE/dense_6/MatMul:product:0)AE/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 AE/dense_7/MatMul/ReadVariableOpReadVariableOp)ae_dense_7_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0
AE/dense_7/MatMulMatMulAE/dense_6/BiasAdd:output:0(AE/dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
!AE/dense_7/BiasAdd/ReadVariableOpReadVariableOp*ae_dense_7_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0
AE/dense_7/BiasAddBiasAddAE/dense_7/MatMul:product:0)AE/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀg
AE/dense_7/ReluReluAE/dense_7/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ_
AE/reshape_3/ShapeShapeAE/dense_7/Relu:activations:0*
T0*
_output_shapes
:j
 AE/reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"AE/reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"AE/reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
AE/reshape_3/strided_sliceStridedSliceAE/reshape_3/Shape:output:0)AE/reshape_3/strided_slice/stack:output:0+AE/reshape_3/strided_slice/stack_1:output:0+AE/reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
AE/reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :^
AE/reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :^
AE/reshape_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@ê
AE/reshape_3/Reshape/shapePack#AE/reshape_3/strided_slice:output:0%AE/reshape_3/Reshape/shape/1:output:0%AE/reshape_3/Reshape/shape/2:output:0%AE/reshape_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
AE/reshape_3/ReshapeReshapeAE/dense_7/Relu:activations:0#AE/reshape_3/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
.AE/decoder/sequential_7/up_sampling2d_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
0AE/decoder/sequential_7/up_sampling2d_12/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ì
,AE/decoder/sequential_7/up_sampling2d_12/mulMul7AE/decoder/sequential_7/up_sampling2d_12/Const:output:09AE/decoder/sequential_7/up_sampling2d_12/Const_1:output:0*
T0*
_output_shapes
:
EAE/decoder/sequential_7/up_sampling2d_12/resize/ResizeNearestNeighborResizeNearestNeighborAE/reshape_3/Reshape:output:00AE/decoder/sequential_7/up_sampling2d_12/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
half_pixel_centers(À
7AE/decoder/sequential_7/conv2d_28/Conv2D/ReadVariableOpReadVariableOp@ae_decoder_sequential_7_conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0­
(AE/decoder/sequential_7/conv2d_28/Conv2DConv2DVAE/decoder/sequential_7/up_sampling2d_12/resize/ResizeNearestNeighbor:resized_images:0?AE/decoder/sequential_7/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
paddingSAME*
strides
¶
8AE/decoder/sequential_7/conv2d_28/BiasAdd/ReadVariableOpReadVariableOpAae_decoder_sequential_7_conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ã
)AE/decoder/sequential_7/conv2d_28/BiasAddBiasAdd1AE/decoder/sequential_7/conv2d_28/Conv2D:output:0@AE/decoder/sequential_7/conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@
&AE/decoder/sequential_7/conv2d_28/ReluRelu2AE/decoder/sequential_7/conv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@
.AE/decoder/sequential_7/up_sampling2d_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"
   
   
0AE/decoder/sequential_7/up_sampling2d_13/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ì
,AE/decoder/sequential_7/up_sampling2d_13/mulMul7AE/decoder/sequential_7/up_sampling2d_13/Const:output:09AE/decoder/sequential_7/up_sampling2d_13/Const_1:output:0*
T0*
_output_shapes
:
EAE/decoder/sequential_7/up_sampling2d_13/resize/ResizeNearestNeighborResizeNearestNeighbor4AE/decoder/sequential_7/conv2d_28/Relu:activations:00AE/decoder/sequential_7/up_sampling2d_13/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers(À
7AE/decoder/sequential_7/conv2d_29/Conv2D/ReadVariableOpReadVariableOp@ae_decoder_sequential_7_conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0­
(AE/decoder/sequential_7/conv2d_29/Conv2DConv2DVAE/decoder/sequential_7/up_sampling2d_13/resize/ResizeNearestNeighbor:resized_images:0?AE/decoder/sequential_7/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
¶
8AE/decoder/sequential_7/conv2d_29/BiasAdd/ReadVariableOpReadVariableOpAae_decoder_sequential_7_conv2d_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ã
)AE/decoder/sequential_7/conv2d_29/BiasAddBiasAdd1AE/decoder/sequential_7/conv2d_29/Conv2D:output:0@AE/decoder/sequential_7/conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
&AE/decoder/sequential_7/conv2d_29/ReluRelu2AE/decoder/sequential_7/conv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
.AE/decoder/sequential_7/up_sampling2d_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
0AE/decoder/sequential_7/up_sampling2d_14/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ì
,AE/decoder/sequential_7/up_sampling2d_14/mulMul7AE/decoder/sequential_7/up_sampling2d_14/Const:output:09AE/decoder/sequential_7/up_sampling2d_14/Const_1:output:0*
T0*
_output_shapes
:
EAE/decoder/sequential_7/up_sampling2d_14/resize/ResizeNearestNeighborResizeNearestNeighbor4AE/decoder/sequential_7/conv2d_29/Relu:activations:00AE/decoder/sequential_7/up_sampling2d_14/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
half_pixel_centers(À
7AE/decoder/sequential_7/conv2d_30/Conv2D/ReadVariableOpReadVariableOp@ae_decoder_sequential_7_conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0­
(AE/decoder/sequential_7/conv2d_30/Conv2DConv2DVAE/decoder/sequential_7/up_sampling2d_14/resize/ResizeNearestNeighbor:resized_images:0?AE/decoder/sequential_7/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
¶
8AE/decoder/sequential_7/conv2d_30/BiasAdd/ReadVariableOpReadVariableOpAae_decoder_sequential_7_conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ã
)AE/decoder/sequential_7/conv2d_30/BiasAddBiasAdd1AE/decoder/sequential_7/conv2d_30/Conv2D:output:0@AE/decoder/sequential_7/conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
&AE/decoder/sequential_7/conv2d_30/ReluRelu2AE/decoder/sequential_7/conv2d_30/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
.AE/decoder/sequential_7/up_sampling2d_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"(   (   
0AE/decoder/sequential_7/up_sampling2d_15/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ì
,AE/decoder/sequential_7/up_sampling2d_15/mulMul7AE/decoder/sequential_7/up_sampling2d_15/Const:output:09AE/decoder/sequential_7/up_sampling2d_15/Const_1:output:0*
T0*
_output_shapes
:
EAE/decoder/sequential_7/up_sampling2d_15/resize/ResizeNearestNeighborResizeNearestNeighbor4AE/decoder/sequential_7/conv2d_30/Relu:activations:00AE/decoder/sequential_7/up_sampling2d_15/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
half_pixel_centers(À
7AE/decoder/sequential_7/conv2d_31/Conv2D/ReadVariableOpReadVariableOp@ae_decoder_sequential_7_conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0­
(AE/decoder/sequential_7/conv2d_31/Conv2DConv2DVAE/decoder/sequential_7/up_sampling2d_15/resize/ResizeNearestNeighbor:resized_images:0?AE/decoder/sequential_7/conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
paddingSAME*
strides
¶
8AE/decoder/sequential_7/conv2d_31/BiasAdd/ReadVariableOpReadVariableOpAae_decoder_sequential_7_conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ã
)AE/decoder/sequential_7/conv2d_31/BiasAddBiasAdd1AE/decoder/sequential_7/conv2d_31/Conv2D:output:0@AE/decoder/sequential_7/conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP¢
)AE/decoder/sequential_7/conv2d_31/SigmoidSigmoid2AE/decoder/sequential_7/conv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
IdentityIdentity-AE/decoder/sequential_7/conv2d_31/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPü
NoOpNoOp9^AE/decoder/sequential_7/conv2d_28/BiasAdd/ReadVariableOp8^AE/decoder/sequential_7/conv2d_28/Conv2D/ReadVariableOp9^AE/decoder/sequential_7/conv2d_29/BiasAdd/ReadVariableOp8^AE/decoder/sequential_7/conv2d_29/Conv2D/ReadVariableOp9^AE/decoder/sequential_7/conv2d_30/BiasAdd/ReadVariableOp8^AE/decoder/sequential_7/conv2d_30/Conv2D/ReadVariableOp9^AE/decoder/sequential_7/conv2d_31/BiasAdd/ReadVariableOp8^AE/decoder/sequential_7/conv2d_31/Conv2D/ReadVariableOp"^AE/dense_6/BiasAdd/ReadVariableOp!^AE/dense_6/MatMul/ReadVariableOp"^AE/dense_7/BiasAdd/ReadVariableOp!^AE/dense_7/MatMul/ReadVariableOp9^AE/encoder/sequential_6/conv2d_24/BiasAdd/ReadVariableOp8^AE/encoder/sequential_6/conv2d_24/Conv2D/ReadVariableOp9^AE/encoder/sequential_6/conv2d_25/BiasAdd/ReadVariableOp8^AE/encoder/sequential_6/conv2d_25/Conv2D/ReadVariableOp9^AE/encoder/sequential_6/conv2d_26/BiasAdd/ReadVariableOp8^AE/encoder/sequential_6/conv2d_26/Conv2D/ReadVariableOp9^AE/encoder/sequential_6/conv2d_27/BiasAdd/ReadVariableOp8^AE/encoder/sequential_6/conv2d_27/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : 2t
8AE/decoder/sequential_7/conv2d_28/BiasAdd/ReadVariableOp8AE/decoder/sequential_7/conv2d_28/BiasAdd/ReadVariableOp2r
7AE/decoder/sequential_7/conv2d_28/Conv2D/ReadVariableOp7AE/decoder/sequential_7/conv2d_28/Conv2D/ReadVariableOp2t
8AE/decoder/sequential_7/conv2d_29/BiasAdd/ReadVariableOp8AE/decoder/sequential_7/conv2d_29/BiasAdd/ReadVariableOp2r
7AE/decoder/sequential_7/conv2d_29/Conv2D/ReadVariableOp7AE/decoder/sequential_7/conv2d_29/Conv2D/ReadVariableOp2t
8AE/decoder/sequential_7/conv2d_30/BiasAdd/ReadVariableOp8AE/decoder/sequential_7/conv2d_30/BiasAdd/ReadVariableOp2r
7AE/decoder/sequential_7/conv2d_30/Conv2D/ReadVariableOp7AE/decoder/sequential_7/conv2d_30/Conv2D/ReadVariableOp2t
8AE/decoder/sequential_7/conv2d_31/BiasAdd/ReadVariableOp8AE/decoder/sequential_7/conv2d_31/BiasAdd/ReadVariableOp2r
7AE/decoder/sequential_7/conv2d_31/Conv2D/ReadVariableOp7AE/decoder/sequential_7/conv2d_31/Conv2D/ReadVariableOp2F
!AE/dense_6/BiasAdd/ReadVariableOp!AE/dense_6/BiasAdd/ReadVariableOp2D
 AE/dense_6/MatMul/ReadVariableOp AE/dense_6/MatMul/ReadVariableOp2F
!AE/dense_7/BiasAdd/ReadVariableOp!AE/dense_7/BiasAdd/ReadVariableOp2D
 AE/dense_7/MatMul/ReadVariableOp AE/dense_7/MatMul/ReadVariableOp2t
8AE/encoder/sequential_6/conv2d_24/BiasAdd/ReadVariableOp8AE/encoder/sequential_6/conv2d_24/BiasAdd/ReadVariableOp2r
7AE/encoder/sequential_6/conv2d_24/Conv2D/ReadVariableOp7AE/encoder/sequential_6/conv2d_24/Conv2D/ReadVariableOp2t
8AE/encoder/sequential_6/conv2d_25/BiasAdd/ReadVariableOp8AE/encoder/sequential_6/conv2d_25/BiasAdd/ReadVariableOp2r
7AE/encoder/sequential_6/conv2d_25/Conv2D/ReadVariableOp7AE/encoder/sequential_6/conv2d_25/Conv2D/ReadVariableOp2t
8AE/encoder/sequential_6/conv2d_26/BiasAdd/ReadVariableOp8AE/encoder/sequential_6/conv2d_26/BiasAdd/ReadVariableOp2r
7AE/encoder/sequential_6/conv2d_26/Conv2D/ReadVariableOp7AE/encoder/sequential_6/conv2d_26/Conv2D/ReadVariableOp2t
8AE/encoder/sequential_6/conv2d_27/BiasAdd/ReadVariableOp8AE/encoder/sequential_6/conv2d_27/BiasAdd/ReadVariableOp2r
7AE/encoder/sequential_6/conv2d_27/Conv2D/ReadVariableOp7AE/encoder/sequential_6/conv2d_27/Conv2D/ReadVariableOp:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
!
_user_specified_name	input_9
È

'__inference_dense_7_layer_call_fn_24680

inputs
unknown:
À
	unknown_0:	À
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_23575p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è

G__inference_sequential_6_layer_call_and_return_conditional_losses_22927

inputs)
conv2d_24_22870:	
conv2d_24_22872:	)
conv2d_25_22887:	
conv2d_25_22889:)
conv2d_26_22904: 
conv2d_26_22906: )
conv2d_27_22921: @
conv2d_27_22923:@
identity¢!conv2d_24/StatefulPartitionedCall¢!conv2d_25/StatefulPartitionedCall¢!conv2d_26/StatefulPartitionedCall¢!conv2d_27/StatefulPartitionedCallü
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_24_22870conv2d_24_22872*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_22869 
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0conv2d_25_22887conv2d_25_22889*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_22886 
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0conv2d_26_22904conv2d_26_22906*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_26_layer_call_and_return_conditional_losses_22903 
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0conv2d_27_22921conv2d_27_22923*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_22920
IdentityIdentity*conv2d_27/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ö
NoOpNoOp"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
¾F
´
B__inference_decoder_layer_call_and_return_conditional_losses_24848
zO
5sequential_7_conv2d_28_conv2d_readvariableop_resource:@@D
6sequential_7_conv2d_28_biasadd_readvariableop_resource:@O
5sequential_7_conv2d_29_conv2d_readvariableop_resource:@ D
6sequential_7_conv2d_29_biasadd_readvariableop_resource: O
5sequential_7_conv2d_30_conv2d_readvariableop_resource: D
6sequential_7_conv2d_30_biasadd_readvariableop_resource:O
5sequential_7_conv2d_31_conv2d_readvariableop_resource:D
6sequential_7_conv2d_31_biasadd_readvariableop_resource:
identity¢-sequential_7/conv2d_28/BiasAdd/ReadVariableOp¢,sequential_7/conv2d_28/Conv2D/ReadVariableOp¢-sequential_7/conv2d_29/BiasAdd/ReadVariableOp¢,sequential_7/conv2d_29/Conv2D/ReadVariableOp¢-sequential_7/conv2d_30/BiasAdd/ReadVariableOp¢,sequential_7/conv2d_30/Conv2D/ReadVariableOp¢-sequential_7/conv2d_31/BiasAdd/ReadVariableOp¢,sequential_7/conv2d_31/Conv2D/ReadVariableOpt
#sequential_7/up_sampling2d_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
%sequential_7/up_sampling2d_12/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      «
!sequential_7/up_sampling2d_12/mulMul,sequential_7/up_sampling2d_12/Const:output:0.sequential_7/up_sampling2d_12/Const_1:output:0*
T0*
_output_shapes
:Ñ
:sequential_7/up_sampling2d_12/resize/ResizeNearestNeighborResizeNearestNeighborz%sequential_7/up_sampling2d_12/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
half_pixel_centers(ª
,sequential_7/conv2d_28/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
sequential_7/conv2d_28/Conv2DConv2DKsequential_7/up_sampling2d_12/resize/ResizeNearestNeighbor:resized_images:04sequential_7/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
paddingSAME*
strides
 
-sequential_7/conv2d_28/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Â
sequential_7/conv2d_28/BiasAddBiasAdd&sequential_7/conv2d_28/Conv2D:output:05sequential_7/conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@
sequential_7/conv2d_28/ReluRelu'sequential_7/conv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@t
#sequential_7/up_sampling2d_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"
   
   v
%sequential_7/up_sampling2d_13/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      «
!sequential_7/up_sampling2d_13/mulMul,sequential_7/up_sampling2d_13/Const:output:0.sequential_7/up_sampling2d_13/Const_1:output:0*
T0*
_output_shapes
:ù
:sequential_7/up_sampling2d_13/resize/ResizeNearestNeighborResizeNearestNeighbor)sequential_7/conv2d_28/Relu:activations:0%sequential_7/up_sampling2d_13/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers(ª
,sequential_7/conv2d_29/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0
sequential_7/conv2d_29/Conv2DConv2DKsequential_7/up_sampling2d_13/resize/ResizeNearestNeighbor:resized_images:04sequential_7/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
 
-sequential_7/conv2d_29/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Â
sequential_7/conv2d_29/BiasAddBiasAdd&sequential_7/conv2d_29/Conv2D:output:05sequential_7/conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
sequential_7/conv2d_29/ReluRelu'sequential_7/conv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
#sequential_7/up_sampling2d_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
%sequential_7/up_sampling2d_14/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      «
!sequential_7/up_sampling2d_14/mulMul,sequential_7/up_sampling2d_14/Const:output:0.sequential_7/up_sampling2d_14/Const_1:output:0*
T0*
_output_shapes
:ù
:sequential_7/up_sampling2d_14/resize/ResizeNearestNeighborResizeNearestNeighbor)sequential_7/conv2d_29/Relu:activations:0%sequential_7/up_sampling2d_14/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
half_pixel_centers(ª
,sequential_7/conv2d_30/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
sequential_7/conv2d_30/Conv2DConv2DKsequential_7/up_sampling2d_14/resize/ResizeNearestNeighbor:resized_images:04sequential_7/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
 
-sequential_7/conv2d_30/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Â
sequential_7/conv2d_30/BiasAddBiasAdd&sequential_7/conv2d_30/Conv2D:output:05sequential_7/conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
sequential_7/conv2d_30/ReluRelu'sequential_7/conv2d_30/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((t
#sequential_7/up_sampling2d_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"(   (   v
%sequential_7/up_sampling2d_15/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      «
!sequential_7/up_sampling2d_15/mulMul,sequential_7/up_sampling2d_15/Const:output:0.sequential_7/up_sampling2d_15/Const_1:output:0*
T0*
_output_shapes
:ù
:sequential_7/up_sampling2d_15/resize/ResizeNearestNeighborResizeNearestNeighbor)sequential_7/conv2d_30/Relu:activations:0%sequential_7/up_sampling2d_15/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
half_pixel_centers(ª
,sequential_7/conv2d_31/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
sequential_7/conv2d_31/Conv2DConv2DKsequential_7/up_sampling2d_15/resize/ResizeNearestNeighbor:resized_images:04sequential_7/conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
paddingSAME*
strides
 
-sequential_7/conv2d_31/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Â
sequential_7/conv2d_31/BiasAddBiasAdd&sequential_7/conv2d_31/Conv2D:output:05sequential_7/conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
sequential_7/conv2d_31/SigmoidSigmoid'sequential_7/conv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPy
IdentityIdentity"sequential_7/conv2d_31/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPÂ
NoOpNoOp.^sequential_7/conv2d_28/BiasAdd/ReadVariableOp-^sequential_7/conv2d_28/Conv2D/ReadVariableOp.^sequential_7/conv2d_29/BiasAdd/ReadVariableOp-^sequential_7/conv2d_29/Conv2D/ReadVariableOp.^sequential_7/conv2d_30/BiasAdd/ReadVariableOp-^sequential_7/conv2d_30/Conv2D/ReadVariableOp.^sequential_7/conv2d_31/BiasAdd/ReadVariableOp-^sequential_7/conv2d_31/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2^
-sequential_7/conv2d_28/BiasAdd/ReadVariableOp-sequential_7/conv2d_28/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_28/Conv2D/ReadVariableOp,sequential_7/conv2d_28/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_29/BiasAdd/ReadVariableOp-sequential_7/conv2d_29/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_29/Conv2D/ReadVariableOp,sequential_7/conv2d_29/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_30/BiasAdd/ReadVariableOp-sequential_7/conv2d_30/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_30/Conv2D/ReadVariableOp,sequential_7/conv2d_30/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_31/BiasAdd/ReadVariableOp-sequential_7/conv2d_31/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_31/Conv2D/ReadVariableOp,sequential_7/conv2d_31/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@

_user_specified_namez


Û
,__inference_sequential_6_layer_call_fn_24869

inputs!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
identity¢StatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_22927w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs

ý
D__inference_conv2d_24_layer_call_and_return_conditional_losses_22869

inputs8
conv2d_readvariableop_resource:	-
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿPP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
»
L
0__inference_up_sampling2d_12_layer_call_fn_25177

inputs
identityÜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_12_layer_call_and_return_conditional_losses_23137
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬

Û
,__inference_sequential_7_layer_call_fn_24996

inputs!
unknown:@@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCallÇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_23387
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¶:
î
G__inference_sequential_7_layer_call_and_return_conditional_losses_25092

inputsB
(conv2d_28_conv2d_readvariableop_resource:@@7
)conv2d_28_biasadd_readvariableop_resource:@B
(conv2d_29_conv2d_readvariableop_resource:@ 7
)conv2d_29_biasadd_readvariableop_resource: B
(conv2d_30_conv2d_readvariableop_resource: 7
)conv2d_30_biasadd_readvariableop_resource:B
(conv2d_31_conv2d_readvariableop_resource:7
)conv2d_31_biasadd_readvariableop_resource:
identity¢ conv2d_28/BiasAdd/ReadVariableOp¢conv2d_28/Conv2D/ReadVariableOp¢ conv2d_29/BiasAdd/ReadVariableOp¢conv2d_29/Conv2D/ReadVariableOp¢ conv2d_30/BiasAdd/ReadVariableOp¢conv2d_30/Conv2D/ReadVariableOp¢ conv2d_31/BiasAdd/ReadVariableOp¢conv2d_31/Conv2D/ReadVariableOpg
up_sampling2d_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_12/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_12/mulMulup_sampling2d_12/Const:output:0!up_sampling2d_12/Const_1:output:0*
T0*
_output_shapes
:¼
-up_sampling2d_12/resize/ResizeNearestNeighborResizeNearestNeighborinputsup_sampling2d_12/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
half_pixel_centers(
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0å
conv2d_28/Conv2DConv2D>up_sampling2d_12/resize/ResizeNearestNeighbor:resized_images:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
paddingSAME*
strides

 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@l
conv2d_28/ReluReluconv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@g
up_sampling2d_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"
   
   i
up_sampling2d_13/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_13/mulMulup_sampling2d_13/Const:output:0!up_sampling2d_13/Const_1:output:0*
T0*
_output_shapes
:Ò
-up_sampling2d_13/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_28/Relu:activations:0up_sampling2d_13/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers(
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0å
conv2d_29/Conv2DConv2D>up_sampling2d_13/resize/ResizeNearestNeighbor:resized_images:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides

 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ l
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
up_sampling2d_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_14/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_14/mulMulup_sampling2d_14/Const:output:0!up_sampling2d_14/Const_1:output:0*
T0*
_output_shapes
:Ò
-up_sampling2d_14/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_29/Relu:activations:0up_sampling2d_14/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
half_pixel_centers(
conv2d_30/Conv2D/ReadVariableOpReadVariableOp(conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0å
conv2d_30/Conv2DConv2D>up_sampling2d_14/resize/ResizeNearestNeighbor:resized_images:0'conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides

 conv2d_30/BiasAdd/ReadVariableOpReadVariableOp)conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_30/BiasAddBiasAddconv2d_30/Conv2D:output:0(conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((l
conv2d_30/ReluReluconv2d_30/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((g
up_sampling2d_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"(   (   i
up_sampling2d_15/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_15/mulMulup_sampling2d_15/Const:output:0!up_sampling2d_15/Const_1:output:0*
T0*
_output_shapes
:Ò
-up_sampling2d_15/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_30/Relu:activations:0up_sampling2d_15/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
half_pixel_centers(
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0å
conv2d_31/Conv2DConv2D>up_sampling2d_15/resize/ResizeNearestNeighbor:resized_images:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
paddingSAME*
strides

 conv2d_31/BiasAdd/ReadVariableOpReadVariableOp)conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_31/BiasAddBiasAddconv2d_31/Conv2D:output:0(conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPr
conv2d_31/SigmoidSigmoidconv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPl
IdentityIdentityconv2d_31/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPÚ
NoOpNoOp!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp!^conv2d_30/BiasAdd/ReadVariableOp ^conv2d_30/Conv2D/ReadVariableOp!^conv2d_31/BiasAdd/ReadVariableOp ^conv2d_31/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2D
 conv2d_30/BiasAdd/ReadVariableOp conv2d_30/BiasAdd/ReadVariableOp2B
conv2d_30/Conv2D/ReadVariableOpconv2d_30/Conv2D/ReadVariableOp2D
 conv2d_31/BiasAdd/ReadVariableOp conv2d_31/BiasAdd/ReadVariableOp2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
È

'__inference_dense_6_layer_call_fn_24661

inputs
unknown:
À
	unknown_0:	
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_23558p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
¢

ä
,__inference_sequential_6_layer_call_fn_22946
conv2d_24_input!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
identity¢StatefulPartitionedCall¾
StatefulPartitionedCallStatefulPartitionedCallconv2d_24_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_22927w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
)
_user_specified_nameconv2d_24_input

ý
D__inference_conv2d_26_layer_call_and_return_conditional_losses_25152

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

g
K__inference_up_sampling2d_14_layer_call_and_return_conditional_losses_25263

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ý
D__inference_conv2d_27_layer_call_and_return_conditional_losses_25172

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ

 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
 
_user_specified_nameinputs
¶

)__inference_conv2d_29_layer_call_fn_25235

inputs!
unknown:@ 
	unknown_0: 
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_23234
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ð
ý
D__inference_conv2d_30_layer_call_and_return_conditional_losses_25283

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿj
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
»
L
0__inference_up_sampling2d_15_layer_call_fn_25288

inputs
identityÜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_15_layer_call_and_return_conditional_losses_23194
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
E
)__inference_flatten_3_layer_call_fn_24646

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_23546a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ç0
¹
B__inference_encoder_layer_call_and_return_conditional_losses_24609

inputsO
5sequential_6_conv2d_24_conv2d_readvariableop_resource:	D
6sequential_6_conv2d_24_biasadd_readvariableop_resource:	O
5sequential_6_conv2d_25_conv2d_readvariableop_resource:	D
6sequential_6_conv2d_25_biasadd_readvariableop_resource:O
5sequential_6_conv2d_26_conv2d_readvariableop_resource: D
6sequential_6_conv2d_26_biasadd_readvariableop_resource: O
5sequential_6_conv2d_27_conv2d_readvariableop_resource: @D
6sequential_6_conv2d_27_biasadd_readvariableop_resource:@
identity¢-sequential_6/conv2d_24/BiasAdd/ReadVariableOp¢,sequential_6/conv2d_24/Conv2D/ReadVariableOp¢-sequential_6/conv2d_25/BiasAdd/ReadVariableOp¢,sequential_6/conv2d_25/Conv2D/ReadVariableOp¢-sequential_6/conv2d_26/BiasAdd/ReadVariableOp¢,sequential_6/conv2d_26/Conv2D/ReadVariableOp¢-sequential_6/conv2d_27/BiasAdd/ReadVariableOp¢,sequential_6/conv2d_27/Conv2D/ReadVariableOpª
,sequential_6/conv2d_24/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0Ç
sequential_6/conv2d_24/Conv2DConv2Dinputs4sequential_6/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides
 
-sequential_6/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0Â
sequential_6/conv2d_24/BiasAddBiasAdd&sequential_6/conv2d_24/Conv2D:output:05sequential_6/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
sequential_6/conv2d_24/ReluRelu'sequential_6/conv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	ª
,sequential_6/conv2d_25/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0ê
sequential_6/conv2d_25/Conv2DConv2D)sequential_6/conv2d_24/Relu:activations:04sequential_6/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
 
-sequential_6/conv2d_25/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Â
sequential_6/conv2d_25/BiasAddBiasAdd&sequential_6/conv2d_25/Conv2D:output:05sequential_6/conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_6/conv2d_25/ReluRelu'sequential_6/conv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
,sequential_6/conv2d_26/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ê
sequential_6/conv2d_26/Conv2DConv2D)sequential_6/conv2d_25/Relu:activations:04sequential_6/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides
 
-sequential_6/conv2d_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Â
sequential_6/conv2d_26/BiasAddBiasAdd&sequential_6/conv2d_26/Conv2D:output:05sequential_6/conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
sequential_6/conv2d_26/ReluRelu'sequential_6/conv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 ª
,sequential_6/conv2d_27/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ê
sequential_6/conv2d_27/Conv2DConv2D)sequential_6/conv2d_26/Relu:activations:04sequential_6/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
 
-sequential_6/conv2d_27/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Â
sequential_6/conv2d_27/BiasAddBiasAdd&sequential_6/conv2d_27/Conv2D:output:05sequential_6/conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_6/conv2d_27/ReluRelu'sequential_6/conv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
IdentityIdentity)sequential_6/conv2d_27/Relu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
NoOpNoOp.^sequential_6/conv2d_24/BiasAdd/ReadVariableOp-^sequential_6/conv2d_24/Conv2D/ReadVariableOp.^sequential_6/conv2d_25/BiasAdd/ReadVariableOp-^sequential_6/conv2d_25/Conv2D/ReadVariableOp.^sequential_6/conv2d_26/BiasAdd/ReadVariableOp-^sequential_6/conv2d_26/Conv2D/ReadVariableOp.^sequential_6/conv2d_27/BiasAdd/ReadVariableOp-^sequential_6/conv2d_27/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2^
-sequential_6/conv2d_24/BiasAdd/ReadVariableOp-sequential_6/conv2d_24/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_24/Conv2D/ReadVariableOp,sequential_6/conv2d_24/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_25/BiasAdd/ReadVariableOp-sequential_6/conv2d_25/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_25/Conv2D/ReadVariableOp,sequential_6/conv2d_25/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_26/BiasAdd/ReadVariableOp-sequential_6/conv2d_26/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_26/Conv2D/ReadVariableOp,sequential_6/conv2d_26/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_27/BiasAdd/ReadVariableOp-sequential_6/conv2d_27/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_27/Conv2D/ReadVariableOp,sequential_6/conv2d_27/Conv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
ï'
î
G__inference_sequential_6_layer_call_and_return_conditional_losses_24954

inputsB
(conv2d_24_conv2d_readvariableop_resource:	7
)conv2d_24_biasadd_readvariableop_resource:	B
(conv2d_25_conv2d_readvariableop_resource:	7
)conv2d_25_biasadd_readvariableop_resource:B
(conv2d_26_conv2d_readvariableop_resource: 7
)conv2d_26_biasadd_readvariableop_resource: B
(conv2d_27_conv2d_readvariableop_resource: @7
)conv2d_27_biasadd_readvariableop_resource:@
identity¢ conv2d_24/BiasAdd/ReadVariableOp¢conv2d_24/Conv2D/ReadVariableOp¢ conv2d_25/BiasAdd/ReadVariableOp¢conv2d_25/Conv2D/ReadVariableOp¢ conv2d_26/BiasAdd/ReadVariableOp¢conv2d_26/Conv2D/ReadVariableOp¢ conv2d_27/BiasAdd/ReadVariableOp¢conv2d_27/Conv2D/ReadVariableOp
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0­
conv2d_24/Conv2DConv2Dinputs'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides

 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	l
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0Ã
conv2d_25/Conv2DConv2Dconv2d_24/Relu:activations:0'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
conv2d_25/ReluReluconv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ã
conv2d_26/Conv2DConv2Dconv2d_25/Relu:activations:0'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides

 conv2d_26/BiasAdd/ReadVariableOpReadVariableOp)conv2d_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_26/BiasAddBiasAddconv2d_26/Conv2D:output:0(conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 l
conv2d_26/ReluReluconv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ã
conv2d_27/Conv2DConv2Dconv2d_26/Relu:activations:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
conv2d_27/ReluReluconv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
IdentityIdentityconv2d_27/Relu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ú
NoOpNoOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp!^conv2d_26/BiasAdd/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2D
 conv2d_26/BiasAdd/ReadVariableOp conv2d_26/BiasAdd/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
Þ
×
__inference__traced_save_25544
file_prefix-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop/
+savev2_conv2d_24_kernel_read_readvariableop-
)savev2_conv2d_24_bias_read_readvariableop/
+savev2_conv2d_25_kernel_read_readvariableop-
)savev2_conv2d_25_bias_read_readvariableop/
+savev2_conv2d_26_kernel_read_readvariableop-
)savev2_conv2d_26_bias_read_readvariableop/
+savev2_conv2d_27_kernel_read_readvariableop-
)savev2_conv2d_27_bias_read_readvariableop/
+savev2_conv2d_28_kernel_read_readvariableop-
)savev2_conv2d_28_bias_read_readvariableop/
+savev2_conv2d_29_kernel_read_readvariableop-
)savev2_conv2d_29_bias_read_readvariableop/
+savev2_conv2d_30_kernel_read_readvariableop-
)savev2_conv2d_30_bias_read_readvariableop/
+savev2_conv2d_31_kernel_read_readvariableop-
)savev2_conv2d_31_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop6
2savev2_adam_conv2d_24_kernel_m_read_readvariableop4
0savev2_adam_conv2d_24_bias_m_read_readvariableop6
2savev2_adam_conv2d_25_kernel_m_read_readvariableop4
0savev2_adam_conv2d_25_bias_m_read_readvariableop6
2savev2_adam_conv2d_26_kernel_m_read_readvariableop4
0savev2_adam_conv2d_26_bias_m_read_readvariableop6
2savev2_adam_conv2d_27_kernel_m_read_readvariableop4
0savev2_adam_conv2d_27_bias_m_read_readvariableop6
2savev2_adam_conv2d_28_kernel_m_read_readvariableop4
0savev2_adam_conv2d_28_bias_m_read_readvariableop6
2savev2_adam_conv2d_29_kernel_m_read_readvariableop4
0savev2_adam_conv2d_29_bias_m_read_readvariableop6
2savev2_adam_conv2d_30_kernel_m_read_readvariableop4
0savev2_adam_conv2d_30_bias_m_read_readvariableop6
2savev2_adam_conv2d_31_kernel_m_read_readvariableop4
0savev2_adam_conv2d_31_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop6
2savev2_adam_conv2d_24_kernel_v_read_readvariableop4
0savev2_adam_conv2d_24_bias_v_read_readvariableop6
2savev2_adam_conv2d_25_kernel_v_read_readvariableop4
0savev2_adam_conv2d_25_bias_v_read_readvariableop6
2savev2_adam_conv2d_26_kernel_v_read_readvariableop4
0savev2_adam_conv2d_26_bias_v_read_readvariableop6
2savev2_adam_conv2d_27_kernel_v_read_readvariableop4
0savev2_adam_conv2d_27_bias_v_read_readvariableop6
2savev2_adam_conv2d_28_kernel_v_read_readvariableop4
0savev2_adam_conv2d_28_bias_v_read_readvariableop6
2savev2_adam_conv2d_29_kernel_v_read_readvariableop4
0savev2_adam_conv2d_29_bias_v_read_readvariableop6
2savev2_adam_conv2d_30_kernel_v_read_readvariableop4
0savev2_adam_conv2d_30_bias_v_read_readvariableop6
2savev2_adam_conv2d_31_kernel_v_read_readvariableop4
0savev2_adam_conv2d_31_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ç 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:D*
dtype0* 
value B DB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHø
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*
valueBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ó
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop+savev2_conv2d_24_kernel_read_readvariableop)savev2_conv2d_24_bias_read_readvariableop+savev2_conv2d_25_kernel_read_readvariableop)savev2_conv2d_25_bias_read_readvariableop+savev2_conv2d_26_kernel_read_readvariableop)savev2_conv2d_26_bias_read_readvariableop+savev2_conv2d_27_kernel_read_readvariableop)savev2_conv2d_27_bias_read_readvariableop+savev2_conv2d_28_kernel_read_readvariableop)savev2_conv2d_28_bias_read_readvariableop+savev2_conv2d_29_kernel_read_readvariableop)savev2_conv2d_29_bias_read_readvariableop+savev2_conv2d_30_kernel_read_readvariableop)savev2_conv2d_30_bias_read_readvariableop+savev2_conv2d_31_kernel_read_readvariableop)savev2_conv2d_31_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop2savev2_adam_conv2d_24_kernel_m_read_readvariableop0savev2_adam_conv2d_24_bias_m_read_readvariableop2savev2_adam_conv2d_25_kernel_m_read_readvariableop0savev2_adam_conv2d_25_bias_m_read_readvariableop2savev2_adam_conv2d_26_kernel_m_read_readvariableop0savev2_adam_conv2d_26_bias_m_read_readvariableop2savev2_adam_conv2d_27_kernel_m_read_readvariableop0savev2_adam_conv2d_27_bias_m_read_readvariableop2savev2_adam_conv2d_28_kernel_m_read_readvariableop0savev2_adam_conv2d_28_bias_m_read_readvariableop2savev2_adam_conv2d_29_kernel_m_read_readvariableop0savev2_adam_conv2d_29_bias_m_read_readvariableop2savev2_adam_conv2d_30_kernel_m_read_readvariableop0savev2_adam_conv2d_30_bias_m_read_readvariableop2savev2_adam_conv2d_31_kernel_m_read_readvariableop0savev2_adam_conv2d_31_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableop2savev2_adam_conv2d_24_kernel_v_read_readvariableop0savev2_adam_conv2d_24_bias_v_read_readvariableop2savev2_adam_conv2d_25_kernel_v_read_readvariableop0savev2_adam_conv2d_25_bias_v_read_readvariableop2savev2_adam_conv2d_26_kernel_v_read_readvariableop0savev2_adam_conv2d_26_bias_v_read_readvariableop2savev2_adam_conv2d_27_kernel_v_read_readvariableop0savev2_adam_conv2d_27_bias_v_read_readvariableop2savev2_adam_conv2d_28_kernel_v_read_readvariableop0savev2_adam_conv2d_28_bias_v_read_readvariableop2savev2_adam_conv2d_29_kernel_v_read_readvariableop0savev2_adam_conv2d_29_bias_v_read_readvariableop2savev2_adam_conv2d_30_kernel_v_read_readvariableop0savev2_adam_conv2d_30_bias_v_read_readvariableop2savev2_adam_conv2d_31_kernel_v_read_readvariableop0savev2_adam_conv2d_31_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *R
dtypesH
F2D	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ù
_input_shapesÇ
Ä: :
À::
À:À: : : : : :	:	:	:: : : @:@:@@:@:@ : : :::: : :
À::
À:À:	:	:	:: : : @:@:@@:@:@ : : ::::
À::
À:À:	:	:	:: : : @:@:@@:@:@ : : :::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
À:!

_output_shapes	
::&"
 
_output_shapes
:
À:!

_output_shapes	
:À:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :,
(
&
_output_shapes
:	: 

_output_shapes
:	:,(
&
_output_shapes
:	: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
À:!

_output_shapes	
::&"
 
_output_shapes
:
À:!

_output_shapes	
:À:, (
&
_output_shapes
:	: !

_output_shapes
:	:,"(
&
_output_shapes
:	: #

_output_shapes
::,$(
&
_output_shapes
: : %

_output_shapes
: :,&(
&
_output_shapes
: @: '

_output_shapes
:@:,((
&
_output_shapes
:@@: )

_output_shapes
:@:,*(
&
_output_shapes
:@ : +

_output_shapes
: :,,(
&
_output_shapes
: : -

_output_shapes
::,.(
&
_output_shapes
:: /

_output_shapes
::&0"
 
_output_shapes
:
À:!1

_output_shapes	
::&2"
 
_output_shapes
:
À:!3

_output_shapes	
:À:,4(
&
_output_shapes
:	: 5

_output_shapes
:	:,6(
&
_output_shapes
:	: 7

_output_shapes
::,8(
&
_output_shapes
: : 9

_output_shapes
: :,:(
&
_output_shapes
: @: ;

_output_shapes
:@:,<(
&
_output_shapes
:@@: =

_output_shapes
:@:,>(
&
_output_shapes
:@ : ?

_output_shapes
: :,@(
&
_output_shapes
: : A

_output_shapes
::,B(
&
_output_shapes
:: C

_output_shapes
::D

_output_shapes
: 
¤
ö
=__inference_AE_layer_call_and_return_conditional_losses_24387

inputsW
=encoder_sequential_6_conv2d_24_conv2d_readvariableop_resource:	L
>encoder_sequential_6_conv2d_24_biasadd_readvariableop_resource:	W
=encoder_sequential_6_conv2d_25_conv2d_readvariableop_resource:	L
>encoder_sequential_6_conv2d_25_biasadd_readvariableop_resource:W
=encoder_sequential_6_conv2d_26_conv2d_readvariableop_resource: L
>encoder_sequential_6_conv2d_26_biasadd_readvariableop_resource: W
=encoder_sequential_6_conv2d_27_conv2d_readvariableop_resource: @L
>encoder_sequential_6_conv2d_27_biasadd_readvariableop_resource:@:
&dense_6_matmul_readvariableop_resource:
À6
'dense_6_biasadd_readvariableop_resource:	:
&dense_7_matmul_readvariableop_resource:
À6
'dense_7_biasadd_readvariableop_resource:	ÀW
=decoder_sequential_7_conv2d_28_conv2d_readvariableop_resource:@@L
>decoder_sequential_7_conv2d_28_biasadd_readvariableop_resource:@W
=decoder_sequential_7_conv2d_29_conv2d_readvariableop_resource:@ L
>decoder_sequential_7_conv2d_29_biasadd_readvariableop_resource: W
=decoder_sequential_7_conv2d_30_conv2d_readvariableop_resource: L
>decoder_sequential_7_conv2d_30_biasadd_readvariableop_resource:W
=decoder_sequential_7_conv2d_31_conv2d_readvariableop_resource:L
>decoder_sequential_7_conv2d_31_biasadd_readvariableop_resource:
identity¢5decoder/sequential_7/conv2d_28/BiasAdd/ReadVariableOp¢4decoder/sequential_7/conv2d_28/Conv2D/ReadVariableOp¢5decoder/sequential_7/conv2d_29/BiasAdd/ReadVariableOp¢4decoder/sequential_7/conv2d_29/Conv2D/ReadVariableOp¢5decoder/sequential_7/conv2d_30/BiasAdd/ReadVariableOp¢4decoder/sequential_7/conv2d_30/Conv2D/ReadVariableOp¢5decoder/sequential_7/conv2d_31/BiasAdd/ReadVariableOp¢4decoder/sequential_7/conv2d_31/Conv2D/ReadVariableOp¢dense_6/BiasAdd/ReadVariableOp¢dense_6/MatMul/ReadVariableOp¢dense_7/BiasAdd/ReadVariableOp¢dense_7/MatMul/ReadVariableOp¢5encoder/sequential_6/conv2d_24/BiasAdd/ReadVariableOp¢4encoder/sequential_6/conv2d_24/Conv2D/ReadVariableOp¢5encoder/sequential_6/conv2d_25/BiasAdd/ReadVariableOp¢4encoder/sequential_6/conv2d_25/Conv2D/ReadVariableOp¢5encoder/sequential_6/conv2d_26/BiasAdd/ReadVariableOp¢4encoder/sequential_6/conv2d_26/Conv2D/ReadVariableOp¢5encoder/sequential_6/conv2d_27/BiasAdd/ReadVariableOp¢4encoder/sequential_6/conv2d_27/Conv2D/ReadVariableOpº
4encoder/sequential_6/conv2d_24/Conv2D/ReadVariableOpReadVariableOp=encoder_sequential_6_conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0×
%encoder/sequential_6/conv2d_24/Conv2DConv2Dinputs<encoder/sequential_6/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides
°
5encoder/sequential_6/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp>encoder_sequential_6_conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0Ú
&encoder/sequential_6/conv2d_24/BiasAddBiasAdd.encoder/sequential_6/conv2d_24/Conv2D:output:0=encoder/sequential_6/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
#encoder/sequential_6/conv2d_24/ReluRelu/encoder/sequential_6/conv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	º
4encoder/sequential_6/conv2d_25/Conv2D/ReadVariableOpReadVariableOp=encoder_sequential_6_conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0
%encoder/sequential_6/conv2d_25/Conv2DConv2D1encoder/sequential_6/conv2d_24/Relu:activations:0<encoder/sequential_6/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
°
5encoder/sequential_6/conv2d_25/BiasAdd/ReadVariableOpReadVariableOp>encoder_sequential_6_conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ú
&encoder/sequential_6/conv2d_25/BiasAddBiasAdd.encoder/sequential_6/conv2d_25/Conv2D:output:0=encoder/sequential_6/conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#encoder/sequential_6/conv2d_25/ReluRelu/encoder/sequential_6/conv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
4encoder/sequential_6/conv2d_26/Conv2D/ReadVariableOpReadVariableOp=encoder_sequential_6_conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
%encoder/sequential_6/conv2d_26/Conv2DConv2D1encoder/sequential_6/conv2d_25/Relu:activations:0<encoder/sequential_6/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides
°
5encoder/sequential_6/conv2d_26/BiasAdd/ReadVariableOpReadVariableOp>encoder_sequential_6_conv2d_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ú
&encoder/sequential_6/conv2d_26/BiasAddBiasAdd.encoder/sequential_6/conv2d_26/Conv2D:output:0=encoder/sequential_6/conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
#encoder/sequential_6/conv2d_26/ReluRelu/encoder/sequential_6/conv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 º
4encoder/sequential_6/conv2d_27/Conv2D/ReadVariableOpReadVariableOp=encoder_sequential_6_conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
%encoder/sequential_6/conv2d_27/Conv2DConv2D1encoder/sequential_6/conv2d_26/Relu:activations:0<encoder/sequential_6/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
°
5encoder/sequential_6/conv2d_27/BiasAdd/ReadVariableOpReadVariableOp>encoder_sequential_6_conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ú
&encoder/sequential_6/conv2d_27/BiasAddBiasAdd.encoder/sequential_6/conv2d_27/Conv2D:output:0=encoder/sequential_6/conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#encoder/sequential_6/conv2d_27/ReluRelu/encoder/sequential_6/conv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  
flatten_3/ReshapeReshape1encoder/sequential_6/conv2d_27/Relu:activations:0flatten_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0
dense_7/MatMulMatMuldense_6/BiasAdd:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀa
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀY
reshape_3/ShapeShapedense_7/Relu:activations:0*
T0*
_output_shapes
:g
reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_3/strided_sliceStridedSlicereshape_3/Shape:output:0&reshape_3/strided_slice/stack:output:0(reshape_3/strided_slice/stack_1:output:0(reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :[
reshape_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@Û
reshape_3/Reshape/shapePack reshape_3/strided_slice:output:0"reshape_3/Reshape/shape/1:output:0"reshape_3/Reshape/shape/2:output:0"reshape_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
reshape_3/ReshapeReshapedense_7/Relu:activations:0 reshape_3/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
+decoder/sequential_7/up_sampling2d_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"      ~
-decoder/sequential_7/up_sampling2d_12/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ã
)decoder/sequential_7/up_sampling2d_12/mulMul4decoder/sequential_7/up_sampling2d_12/Const:output:06decoder/sequential_7/up_sampling2d_12/Const_1:output:0*
T0*
_output_shapes
:ú
Bdecoder/sequential_7/up_sampling2d_12/resize/ResizeNearestNeighborResizeNearestNeighborreshape_3/Reshape:output:0-decoder/sequential_7/up_sampling2d_12/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
half_pixel_centers(º
4decoder/sequential_7/conv2d_28/Conv2D/ReadVariableOpReadVariableOp=decoder_sequential_7_conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0¤
%decoder/sequential_7/conv2d_28/Conv2DConv2DSdecoder/sequential_7/up_sampling2d_12/resize/ResizeNearestNeighbor:resized_images:0<decoder/sequential_7/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
paddingSAME*
strides
°
5decoder/sequential_7/conv2d_28/BiasAdd/ReadVariableOpReadVariableOp>decoder_sequential_7_conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ú
&decoder/sequential_7/conv2d_28/BiasAddBiasAdd.decoder/sequential_7/conv2d_28/Conv2D:output:0=decoder/sequential_7/conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@
#decoder/sequential_7/conv2d_28/ReluRelu/decoder/sequential_7/conv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@|
+decoder/sequential_7/up_sampling2d_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"
   
   ~
-decoder/sequential_7/up_sampling2d_13/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ã
)decoder/sequential_7/up_sampling2d_13/mulMul4decoder/sequential_7/up_sampling2d_13/Const:output:06decoder/sequential_7/up_sampling2d_13/Const_1:output:0*
T0*
_output_shapes
:
Bdecoder/sequential_7/up_sampling2d_13/resize/ResizeNearestNeighborResizeNearestNeighbor1decoder/sequential_7/conv2d_28/Relu:activations:0-decoder/sequential_7/up_sampling2d_13/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers(º
4decoder/sequential_7/conv2d_29/Conv2D/ReadVariableOpReadVariableOp=decoder_sequential_7_conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0¤
%decoder/sequential_7/conv2d_29/Conv2DConv2DSdecoder/sequential_7/up_sampling2d_13/resize/ResizeNearestNeighbor:resized_images:0<decoder/sequential_7/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
°
5decoder/sequential_7/conv2d_29/BiasAdd/ReadVariableOpReadVariableOp>decoder_sequential_7_conv2d_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ú
&decoder/sequential_7/conv2d_29/BiasAddBiasAdd.decoder/sequential_7/conv2d_29/Conv2D:output:0=decoder/sequential_7/conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#decoder/sequential_7/conv2d_29/ReluRelu/decoder/sequential_7/conv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
+decoder/sequential_7/up_sampling2d_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"      ~
-decoder/sequential_7/up_sampling2d_14/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ã
)decoder/sequential_7/up_sampling2d_14/mulMul4decoder/sequential_7/up_sampling2d_14/Const:output:06decoder/sequential_7/up_sampling2d_14/Const_1:output:0*
T0*
_output_shapes
:
Bdecoder/sequential_7/up_sampling2d_14/resize/ResizeNearestNeighborResizeNearestNeighbor1decoder/sequential_7/conv2d_29/Relu:activations:0-decoder/sequential_7/up_sampling2d_14/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
half_pixel_centers(º
4decoder/sequential_7/conv2d_30/Conv2D/ReadVariableOpReadVariableOp=decoder_sequential_7_conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0¤
%decoder/sequential_7/conv2d_30/Conv2DConv2DSdecoder/sequential_7/up_sampling2d_14/resize/ResizeNearestNeighbor:resized_images:0<decoder/sequential_7/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
°
5decoder/sequential_7/conv2d_30/BiasAdd/ReadVariableOpReadVariableOp>decoder_sequential_7_conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ú
&decoder/sequential_7/conv2d_30/BiasAddBiasAdd.decoder/sequential_7/conv2d_30/Conv2D:output:0=decoder/sequential_7/conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
#decoder/sequential_7/conv2d_30/ReluRelu/decoder/sequential_7/conv2d_30/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((|
+decoder/sequential_7/up_sampling2d_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"(   (   ~
-decoder/sequential_7/up_sampling2d_15/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ã
)decoder/sequential_7/up_sampling2d_15/mulMul4decoder/sequential_7/up_sampling2d_15/Const:output:06decoder/sequential_7/up_sampling2d_15/Const_1:output:0*
T0*
_output_shapes
:
Bdecoder/sequential_7/up_sampling2d_15/resize/ResizeNearestNeighborResizeNearestNeighbor1decoder/sequential_7/conv2d_30/Relu:activations:0-decoder/sequential_7/up_sampling2d_15/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
half_pixel_centers(º
4decoder/sequential_7/conv2d_31/Conv2D/ReadVariableOpReadVariableOp=decoder_sequential_7_conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¤
%decoder/sequential_7/conv2d_31/Conv2DConv2DSdecoder/sequential_7/up_sampling2d_15/resize/ResizeNearestNeighbor:resized_images:0<decoder/sequential_7/conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
paddingSAME*
strides
°
5decoder/sequential_7/conv2d_31/BiasAdd/ReadVariableOpReadVariableOp>decoder_sequential_7_conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ú
&decoder/sequential_7/conv2d_31/BiasAddBiasAdd.decoder/sequential_7/conv2d_31/Conv2D:output:0=decoder/sequential_7/conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
&decoder/sequential_7/conv2d_31/SigmoidSigmoid/decoder/sequential_7/conv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
IdentityIdentity*decoder/sequential_7/conv2d_31/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPÀ
NoOpNoOp6^decoder/sequential_7/conv2d_28/BiasAdd/ReadVariableOp5^decoder/sequential_7/conv2d_28/Conv2D/ReadVariableOp6^decoder/sequential_7/conv2d_29/BiasAdd/ReadVariableOp5^decoder/sequential_7/conv2d_29/Conv2D/ReadVariableOp6^decoder/sequential_7/conv2d_30/BiasAdd/ReadVariableOp5^decoder/sequential_7/conv2d_30/Conv2D/ReadVariableOp6^decoder/sequential_7/conv2d_31/BiasAdd/ReadVariableOp5^decoder/sequential_7/conv2d_31/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp6^encoder/sequential_6/conv2d_24/BiasAdd/ReadVariableOp5^encoder/sequential_6/conv2d_24/Conv2D/ReadVariableOp6^encoder/sequential_6/conv2d_25/BiasAdd/ReadVariableOp5^encoder/sequential_6/conv2d_25/Conv2D/ReadVariableOp6^encoder/sequential_6/conv2d_26/BiasAdd/ReadVariableOp5^encoder/sequential_6/conv2d_26/Conv2D/ReadVariableOp6^encoder/sequential_6/conv2d_27/BiasAdd/ReadVariableOp5^encoder/sequential_6/conv2d_27/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : 2n
5decoder/sequential_7/conv2d_28/BiasAdd/ReadVariableOp5decoder/sequential_7/conv2d_28/BiasAdd/ReadVariableOp2l
4decoder/sequential_7/conv2d_28/Conv2D/ReadVariableOp4decoder/sequential_7/conv2d_28/Conv2D/ReadVariableOp2n
5decoder/sequential_7/conv2d_29/BiasAdd/ReadVariableOp5decoder/sequential_7/conv2d_29/BiasAdd/ReadVariableOp2l
4decoder/sequential_7/conv2d_29/Conv2D/ReadVariableOp4decoder/sequential_7/conv2d_29/Conv2D/ReadVariableOp2n
5decoder/sequential_7/conv2d_30/BiasAdd/ReadVariableOp5decoder/sequential_7/conv2d_30/BiasAdd/ReadVariableOp2l
4decoder/sequential_7/conv2d_30/Conv2D/ReadVariableOp4decoder/sequential_7/conv2d_30/Conv2D/ReadVariableOp2n
5decoder/sequential_7/conv2d_31/BiasAdd/ReadVariableOp5decoder/sequential_7/conv2d_31/BiasAdd/ReadVariableOp2l
4decoder/sequential_7/conv2d_31/Conv2D/ReadVariableOp4decoder/sequential_7/conv2d_31/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2n
5encoder/sequential_6/conv2d_24/BiasAdd/ReadVariableOp5encoder/sequential_6/conv2d_24/BiasAdd/ReadVariableOp2l
4encoder/sequential_6/conv2d_24/Conv2D/ReadVariableOp4encoder/sequential_6/conv2d_24/Conv2D/ReadVariableOp2n
5encoder/sequential_6/conv2d_25/BiasAdd/ReadVariableOp5encoder/sequential_6/conv2d_25/BiasAdd/ReadVariableOp2l
4encoder/sequential_6/conv2d_25/Conv2D/ReadVariableOp4encoder/sequential_6/conv2d_25/Conv2D/ReadVariableOp2n
5encoder/sequential_6/conv2d_26/BiasAdd/ReadVariableOp5encoder/sequential_6/conv2d_26/BiasAdd/ReadVariableOp2l
4encoder/sequential_6/conv2d_26/Conv2D/ReadVariableOp4encoder/sequential_6/conv2d_26/Conv2D/ReadVariableOp2n
5encoder/sequential_6/conv2d_27/BiasAdd/ReadVariableOp5encoder/sequential_6/conv2d_27/BiasAdd/ReadVariableOp2l
4encoder/sequential_6/conv2d_27/Conv2D/ReadVariableOp4encoder/sequential_6/conv2d_27/Conv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
ï'
î
G__inference_sequential_6_layer_call_and_return_conditional_losses_24922

inputsB
(conv2d_24_conv2d_readvariableop_resource:	7
)conv2d_24_biasadd_readvariableop_resource:	B
(conv2d_25_conv2d_readvariableop_resource:	7
)conv2d_25_biasadd_readvariableop_resource:B
(conv2d_26_conv2d_readvariableop_resource: 7
)conv2d_26_biasadd_readvariableop_resource: B
(conv2d_27_conv2d_readvariableop_resource: @7
)conv2d_27_biasadd_readvariableop_resource:@
identity¢ conv2d_24/BiasAdd/ReadVariableOp¢conv2d_24/Conv2D/ReadVariableOp¢ conv2d_25/BiasAdd/ReadVariableOp¢conv2d_25/Conv2D/ReadVariableOp¢ conv2d_26/BiasAdd/ReadVariableOp¢conv2d_26/Conv2D/ReadVariableOp¢ conv2d_27/BiasAdd/ReadVariableOp¢conv2d_27/Conv2D/ReadVariableOp
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0­
conv2d_24/Conv2DConv2Dinputs'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides

 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	l
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0Ã
conv2d_25/Conv2DConv2Dconv2d_24/Relu:activations:0'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
conv2d_25/ReluReluconv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ã
conv2d_26/Conv2DConv2Dconv2d_25/Relu:activations:0'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides

 conv2d_26/BiasAdd/ReadVariableOpReadVariableOp)conv2d_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_26/BiasAddBiasAddconv2d_26/Conv2D:output:0(conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 l
conv2d_26/ReluReluconv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ã
conv2d_27/Conv2DConv2Dconv2d_26/Relu:activations:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
conv2d_27/ReluReluconv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
IdentityIdentityconv2d_27/Relu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ú
NoOpNoOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp!^conv2d_26/BiasAdd/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2D
 conv2d_26/BiasAdd/ReadVariableOp conv2d_26/BiasAdd/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
ý	
Ö
'__inference_encoder_layer_call_fn_24556

inputs!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
identity¢StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_23522w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs

g
K__inference_up_sampling2d_12_layer_call_and_return_conditional_losses_23137

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦
Å
"__inference_AE_layer_call_fn_23707
input_9!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:
À
	unknown_8:	
	unknown_9:
À

unknown_10:	À$

unknown_11:@@

unknown_12:@$

unknown_13:@ 

unknown_14: $

unknown_15: 

unknown_16:$

unknown_17:

unknown_18:
identity¢StatefulPartitionedCallÑ
StatefulPartitionedCallStatefulPartitionedCallinput_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *F
fAR?
=__inference_AE_layer_call_and_return_conditional_losses_23664w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
!
_user_specified_name	input_9
Æ
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_24652

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
»
L
0__inference_up_sampling2d_13_layer_call_fn_25214

inputs
identityÜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_13_layer_call_and_return_conditional_losses_23156
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ý
D__inference_conv2d_26_layer_call_and_return_conditional_losses_22903

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£
Ä
"__inference_AE_layer_call_fn_24286

inputs!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:
À
	unknown_8:	
	unknown_9:
À

unknown_10:	À$

unknown_11:@@

unknown_12:@$

unknown_13:@ 

unknown_14: $

unknown_15: 

unknown_16:$

unknown_17:

unknown_18:
identity¢StatefulPartitionedCallÐ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *F
fAR?
=__inference_AE_layer_call_and_return_conditional_losses_24002w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs

ý
D__inference_conv2d_25_layer_call_and_return_conditional_losses_22886

inputs8
conv2d_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ((	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
 
_user_specified_nameinputs

g
K__inference_up_sampling2d_12_layer_call_and_return_conditional_losses_25189

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í
`
D__inference_reshape_3_layer_call_and_return_conditional_losses_24710

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs

Æ
#__inference_signature_wrapper_24535
input_9!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:
À
	unknown_8:	
	unknown_9:
À

unknown_10:	À$

unknown_11:@@

unknown_12:@$

unknown_13:@ 

unknown_14: $

unknown_15: 

unknown_16:$

unknown_17:

unknown_18:
identity¢StatefulPartitionedCall´
StatefulPartitionedCallStatefulPartitionedCallinput_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_22851w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
!
_user_specified_name	input_9


Û
,__inference_sequential_6_layer_call_fn_24890

inputs!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
identity¢StatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_23033w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
ð
ý
D__inference_conv2d_28_layer_call_and_return_conditional_losses_25209

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¦
Å
"__inference_AE_layer_call_fn_24090
input_9!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:
À
	unknown_8:	
	unknown_9:
À

unknown_10:	À$

unknown_11:@@

unknown_12:@$

unknown_13:@ 

unknown_14: $

unknown_15: 

unknown_16:$

unknown_17:

unknown_18:
identity¢StatefulPartitionedCallÑ
StatefulPartitionedCallStatefulPartitionedCallinput_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *F
fAR?
=__inference_AE_layer_call_and_return_conditional_losses_24002w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
!
_user_specified_name	input_9

§
G__inference_sequential_6_layer_call_and_return_conditional_losses_23121
conv2d_24_input)
conv2d_24_23100:	
conv2d_24_23102:	)
conv2d_25_23105:	
conv2d_25_23107:)
conv2d_26_23110: 
conv2d_26_23112: )
conv2d_27_23115: @
conv2d_27_23117:@
identity¢!conv2d_24/StatefulPartitionedCall¢!conv2d_25/StatefulPartitionedCall¢!conv2d_26/StatefulPartitionedCall¢!conv2d_27/StatefulPartitionedCall
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCallconv2d_24_inputconv2d_24_23100conv2d_24_23102*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_22869 
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0conv2d_25_23105conv2d_25_23107*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_22886 
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0conv2d_26_23110conv2d_26_23112*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_26_layer_call_and_return_conditional_losses_22903 
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0conv2d_27_23115conv2d_27_23117*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_22920
IdentityIdentity*conv2d_27/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ö
NoOpNoOp"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall:` \
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
)
_user_specified_nameconv2d_24_input
Ð	
ö
B__inference_dense_6_layer_call_and_return_conditional_losses_24671

inputs2
matmul_readvariableop_resource:
À.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
ð
ý
D__inference_conv2d_29_layer_call_and_return_conditional_losses_25246

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ð$
 
G__inference_sequential_7_layer_call_and_return_conditional_losses_23455
input_10)
conv2d_28_23431:@@
conv2d_28_23433:@)
conv2d_29_23437:@ 
conv2d_29_23439: )
conv2d_30_23443: 
conv2d_30_23445:)
conv2d_31_23449:
conv2d_31_23451:
identity¢!conv2d_28/StatefulPartitionedCall¢!conv2d_29/StatefulPartitionedCall¢!conv2d_30/StatefulPartitionedCall¢!conv2d_31/StatefulPartitionedCallæ
 up_sampling2d_12/PartitionedCallPartitionedCallinput_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_12_layer_call_and_return_conditional_losses_23137±
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_12/PartitionedCall:output:0conv2d_28_23431conv2d_28_23433*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_23216
 up_sampling2d_13/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_13_layer_call_and_return_conditional_losses_23156±
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_13/PartitionedCall:output:0conv2d_29_23437conv2d_29_23439*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_23234
 up_sampling2d_14/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_14_layer_call_and_return_conditional_losses_23175±
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_14/PartitionedCall:output:0conv2d_30_23443conv2d_30_23445*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_30_layer_call_and_return_conditional_losses_23252
 up_sampling2d_15/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_15_layer_call_and_return_conditional_losses_23194±
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_15/PartitionedCall:output:0conv2d_31_23449conv2d_31_23451*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_31_layer_call_and_return_conditional_losses_23270
IdentityIdentity*conv2d_31/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÖ
NoOpNoOp"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
input_10

g
K__inference_up_sampling2d_14_layer_call_and_return_conditional_losses_23175

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í

)__inference_conv2d_26_layer_call_fn_25141

inputs!
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_26_layer_call_and_return_conditional_losses_22903w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü
Õ*
!__inference__traced_restore_25755
file_prefix3
assignvariableop_dense_6_kernel:
À.
assignvariableop_1_dense_6_bias:	5
!assignvariableop_2_dense_7_kernel:
À.
assignvariableop_3_dense_7_bias:	À&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: =
#assignvariableop_9_conv2d_24_kernel:	0
"assignvariableop_10_conv2d_24_bias:	>
$assignvariableop_11_conv2d_25_kernel:	0
"assignvariableop_12_conv2d_25_bias:>
$assignvariableop_13_conv2d_26_kernel: 0
"assignvariableop_14_conv2d_26_bias: >
$assignvariableop_15_conv2d_27_kernel: @0
"assignvariableop_16_conv2d_27_bias:@>
$assignvariableop_17_conv2d_28_kernel:@@0
"assignvariableop_18_conv2d_28_bias:@>
$assignvariableop_19_conv2d_29_kernel:@ 0
"assignvariableop_20_conv2d_29_bias: >
$assignvariableop_21_conv2d_30_kernel: 0
"assignvariableop_22_conv2d_30_bias:>
$assignvariableop_23_conv2d_31_kernel:0
"assignvariableop_24_conv2d_31_bias:#
assignvariableop_25_total: #
assignvariableop_26_count: =
)assignvariableop_27_adam_dense_6_kernel_m:
À6
'assignvariableop_28_adam_dense_6_bias_m:	=
)assignvariableop_29_adam_dense_7_kernel_m:
À6
'assignvariableop_30_adam_dense_7_bias_m:	ÀE
+assignvariableop_31_adam_conv2d_24_kernel_m:	7
)assignvariableop_32_adam_conv2d_24_bias_m:	E
+assignvariableop_33_adam_conv2d_25_kernel_m:	7
)assignvariableop_34_adam_conv2d_25_bias_m:E
+assignvariableop_35_adam_conv2d_26_kernel_m: 7
)assignvariableop_36_adam_conv2d_26_bias_m: E
+assignvariableop_37_adam_conv2d_27_kernel_m: @7
)assignvariableop_38_adam_conv2d_27_bias_m:@E
+assignvariableop_39_adam_conv2d_28_kernel_m:@@7
)assignvariableop_40_adam_conv2d_28_bias_m:@E
+assignvariableop_41_adam_conv2d_29_kernel_m:@ 7
)assignvariableop_42_adam_conv2d_29_bias_m: E
+assignvariableop_43_adam_conv2d_30_kernel_m: 7
)assignvariableop_44_adam_conv2d_30_bias_m:E
+assignvariableop_45_adam_conv2d_31_kernel_m:7
)assignvariableop_46_adam_conv2d_31_bias_m:=
)assignvariableop_47_adam_dense_6_kernel_v:
À6
'assignvariableop_48_adam_dense_6_bias_v:	=
)assignvariableop_49_adam_dense_7_kernel_v:
À6
'assignvariableop_50_adam_dense_7_bias_v:	ÀE
+assignvariableop_51_adam_conv2d_24_kernel_v:	7
)assignvariableop_52_adam_conv2d_24_bias_v:	E
+assignvariableop_53_adam_conv2d_25_kernel_v:	7
)assignvariableop_54_adam_conv2d_25_bias_v:E
+assignvariableop_55_adam_conv2d_26_kernel_v: 7
)assignvariableop_56_adam_conv2d_26_bias_v: E
+assignvariableop_57_adam_conv2d_27_kernel_v: @7
)assignvariableop_58_adam_conv2d_27_bias_v:@E
+assignvariableop_59_adam_conv2d_28_kernel_v:@@7
)assignvariableop_60_adam_conv2d_28_bias_v:@E
+assignvariableop_61_adam_conv2d_29_kernel_v:@ 7
)assignvariableop_62_adam_conv2d_29_bias_v: E
+assignvariableop_63_adam_conv2d_30_kernel_v: 7
)assignvariableop_64_adam_conv2d_30_bias_v:E
+assignvariableop_65_adam_conv2d_31_kernel_v:7
)assignvariableop_66_adam_conv2d_31_bias_v:
identity_68¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ê 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:D*
dtype0* 
value B DB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHû
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*
valueBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B õ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¦
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*R
dtypesH
F2D	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_7_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_7_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp#assignvariableop_9_conv2d_24_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp"assignvariableop_10_conv2d_24_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp$assignvariableop_11_conv2d_25_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp"assignvariableop_12_conv2d_25_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp$assignvariableop_13_conv2d_26_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp"assignvariableop_14_conv2d_26_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp$assignvariableop_15_conv2d_27_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp"assignvariableop_16_conv2d_27_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp$assignvariableop_17_conv2d_28_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp"assignvariableop_18_conv2d_28_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp$assignvariableop_19_conv2d_29_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp"assignvariableop_20_conv2d_29_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp$assignvariableop_21_conv2d_30_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp"assignvariableop_22_conv2d_30_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp$assignvariableop_23_conv2d_31_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp"assignvariableop_24_conv2d_31_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOpassignvariableop_25_totalIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOpassignvariableop_26_countIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_6_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_6_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_7_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_7_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_24_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_24_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_25_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_25_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv2d_26_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv2d_26_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_conv2d_27_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_conv2d_27_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_conv2d_28_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_conv2d_28_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv2d_29_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv2d_29_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_30_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_30_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_31_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_31_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_6_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_6_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_dense_7_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_dense_7_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_conv2d_24_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_conv2d_24_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_conv2d_25_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_conv2d_25_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp+assignvariableop_55_adam_conv2d_26_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_conv2d_26_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp+assignvariableop_57_adam_conv2d_27_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_conv2d_27_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp+assignvariableop_59_adam_conv2d_28_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_conv2d_28_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp+assignvariableop_61_adam_conv2d_29_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp)assignvariableop_62_adam_conv2d_29_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_63AssignVariableOp+assignvariableop_63_adam_conv2d_30_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_64AssignVariableOp)assignvariableop_64_adam_conv2d_30_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_65AssignVariableOp+assignvariableop_65_adam_conv2d_31_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_66AssignVariableOp)assignvariableop_66_adam_conv2d_31_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_67Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_68IdentityIdentity_67:output:0^NoOp_1*
T0*
_output_shapes
: þ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_68Identity_68:output:0*
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
·!

=__inference_AE_layer_call_and_return_conditional_losses_24140
input_9'
encoder_24093:	
encoder_24095:	'
encoder_24097:	
encoder_24099:'
encoder_24101: 
encoder_24103: '
encoder_24105: @
encoder_24107:@!
dense_6_24111:
À
dense_6_24113:	!
dense_7_24116:
À
dense_7_24118:	À'
decoder_24122:@@
decoder_24124:@'
decoder_24126:@ 
decoder_24128: '
decoder_24130: 
decoder_24132:'
decoder_24134:
decoder_24136:
identity¢decoder/StatefulPartitionedCall¢dense_6/StatefulPartitionedCall¢dense_7/StatefulPartitionedCall¢encoder/StatefulPartitionedCallÛ
encoder/StatefulPartitionedCallStatefulPartitionedCallinput_9encoder_24093encoder_24095encoder_24097encoder_24099encoder_24101encoder_24103encoder_24105encoder_24107*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_23522ß
flatten_3/PartitionedCallPartitionedCall(encoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_23546
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_24111dense_6_24113*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_23558
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_24116dense_7_24118*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_23575æ
reshape_3/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_reshape_3_layer_call_and_return_conditional_losses_23595ö
decoder/StatefulPartitionedCallStatefulPartitionedCall"reshape_3/PartitionedCall:output:0decoder_24122decoder_24124decoder_24126decoder_24128decoder_24130decoder_24132decoder_24134decoder_24136*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_23645
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPÎ
NoOpNoOp ^decoder/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:X T
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
!
_user_specified_name	input_9
ê$

G__inference_sequential_7_layer_call_and_return_conditional_losses_23277

inputs)
conv2d_28_23217:@@
conv2d_28_23219:@)
conv2d_29_23235:@ 
conv2d_29_23237: )
conv2d_30_23253: 
conv2d_30_23255:)
conv2d_31_23271:
conv2d_31_23273:
identity¢!conv2d_28/StatefulPartitionedCall¢!conv2d_29/StatefulPartitionedCall¢!conv2d_30/StatefulPartitionedCall¢!conv2d_31/StatefulPartitionedCallä
 up_sampling2d_12/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_12_layer_call_and_return_conditional_losses_23137±
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_12/PartitionedCall:output:0conv2d_28_23217conv2d_28_23219*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_23216
 up_sampling2d_13/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_13_layer_call_and_return_conditional_losses_23156±
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_13/PartitionedCall:output:0conv2d_29_23235conv2d_29_23237*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_23234
 up_sampling2d_14/PartitionedCallPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_14_layer_call_and_return_conditional_losses_23175±
!conv2d_30/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_14/PartitionedCall:output:0conv2d_30_23253conv2d_30_23255*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_30_layer_call_and_return_conditional_losses_23252
 up_sampling2d_15/PartitionedCallPartitionedCall*conv2d_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_15_layer_call_and_return_conditional_losses_23194±
!conv2d_31/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_15/PartitionedCall:output:0conv2d_31_23271conv2d_31_23273*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_31_layer_call_and_return_conditional_losses_23270
IdentityIdentity*conv2d_31/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÖ
NoOpNoOp"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall"^conv2d_30/StatefulPartitionedCall"^conv2d_31/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2F
!conv2d_30/StatefulPartitionedCall!conv2d_30/StatefulPartitionedCall2F
!conv2d_31/StatefulPartitionedCall!conv2d_31/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
í

)__inference_conv2d_25_layer_call_fn_25121

inputs!
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_22886w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ((	: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
 
_user_specified_nameinputs
²

Ý
,__inference_sequential_7_layer_call_fn_23427
input_10!
unknown:@@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCallÉ
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_23387
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
input_10
ç0
¹
B__inference_encoder_layer_call_and_return_conditional_losses_23886

inputsO
5sequential_6_conv2d_24_conv2d_readvariableop_resource:	D
6sequential_6_conv2d_24_biasadd_readvariableop_resource:	O
5sequential_6_conv2d_25_conv2d_readvariableop_resource:	D
6sequential_6_conv2d_25_biasadd_readvariableop_resource:O
5sequential_6_conv2d_26_conv2d_readvariableop_resource: D
6sequential_6_conv2d_26_biasadd_readvariableop_resource: O
5sequential_6_conv2d_27_conv2d_readvariableop_resource: @D
6sequential_6_conv2d_27_biasadd_readvariableop_resource:@
identity¢-sequential_6/conv2d_24/BiasAdd/ReadVariableOp¢,sequential_6/conv2d_24/Conv2D/ReadVariableOp¢-sequential_6/conv2d_25/BiasAdd/ReadVariableOp¢,sequential_6/conv2d_25/Conv2D/ReadVariableOp¢-sequential_6/conv2d_26/BiasAdd/ReadVariableOp¢,sequential_6/conv2d_26/Conv2D/ReadVariableOp¢-sequential_6/conv2d_27/BiasAdd/ReadVariableOp¢,sequential_6/conv2d_27/Conv2D/ReadVariableOpª
,sequential_6/conv2d_24/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0Ç
sequential_6/conv2d_24/Conv2DConv2Dinputs4sequential_6/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides
 
-sequential_6/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0Â
sequential_6/conv2d_24/BiasAddBiasAdd&sequential_6/conv2d_24/Conv2D:output:05sequential_6/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
sequential_6/conv2d_24/ReluRelu'sequential_6/conv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	ª
,sequential_6/conv2d_25/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0ê
sequential_6/conv2d_25/Conv2DConv2D)sequential_6/conv2d_24/Relu:activations:04sequential_6/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
 
-sequential_6/conv2d_25/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Â
sequential_6/conv2d_25/BiasAddBiasAdd&sequential_6/conv2d_25/Conv2D:output:05sequential_6/conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_6/conv2d_25/ReluRelu'sequential_6/conv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
,sequential_6/conv2d_26/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ê
sequential_6/conv2d_26/Conv2DConv2D)sequential_6/conv2d_25/Relu:activations:04sequential_6/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides
 
-sequential_6/conv2d_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Â
sequential_6/conv2d_26/BiasAddBiasAdd&sequential_6/conv2d_26/Conv2D:output:05sequential_6/conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
sequential_6/conv2d_26/ReluRelu'sequential_6/conv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 ª
,sequential_6/conv2d_27/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ê
sequential_6/conv2d_27/Conv2DConv2D)sequential_6/conv2d_26/Relu:activations:04sequential_6/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
 
-sequential_6/conv2d_27/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Â
sequential_6/conv2d_27/BiasAddBiasAdd&sequential_6/conv2d_27/Conv2D:output:05sequential_6/conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_6/conv2d_27/ReluRelu'sequential_6/conv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
IdentityIdentity)sequential_6/conv2d_27/Relu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
NoOpNoOp.^sequential_6/conv2d_24/BiasAdd/ReadVariableOp-^sequential_6/conv2d_24/Conv2D/ReadVariableOp.^sequential_6/conv2d_25/BiasAdd/ReadVariableOp-^sequential_6/conv2d_25/Conv2D/ReadVariableOp.^sequential_6/conv2d_26/BiasAdd/ReadVariableOp-^sequential_6/conv2d_26/Conv2D/ReadVariableOp.^sequential_6/conv2d_27/BiasAdd/ReadVariableOp-^sequential_6/conv2d_27/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2^
-sequential_6/conv2d_24/BiasAdd/ReadVariableOp-sequential_6/conv2d_24/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_24/Conv2D/ReadVariableOp,sequential_6/conv2d_24/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_25/BiasAdd/ReadVariableOp-sequential_6/conv2d_25/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_25/Conv2D/ReadVariableOp,sequential_6/conv2d_25/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_26/BiasAdd/ReadVariableOp-sequential_6/conv2d_26/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_26/Conv2D/ReadVariableOp,sequential_6/conv2d_26/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_27/BiasAdd/ReadVariableOp-sequential_6/conv2d_27/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_27/Conv2D/ReadVariableOp,sequential_6/conv2d_27/Conv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
í

)__inference_conv2d_24_layer_call_fn_25101

inputs!
unknown:	
	unknown_0:	
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_22869w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿPP: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
¾F
´
B__inference_decoder_layer_call_and_return_conditional_losses_23779
zO
5sequential_7_conv2d_28_conv2d_readvariableop_resource:@@D
6sequential_7_conv2d_28_biasadd_readvariableop_resource:@O
5sequential_7_conv2d_29_conv2d_readvariableop_resource:@ D
6sequential_7_conv2d_29_biasadd_readvariableop_resource: O
5sequential_7_conv2d_30_conv2d_readvariableop_resource: D
6sequential_7_conv2d_30_biasadd_readvariableop_resource:O
5sequential_7_conv2d_31_conv2d_readvariableop_resource:D
6sequential_7_conv2d_31_biasadd_readvariableop_resource:
identity¢-sequential_7/conv2d_28/BiasAdd/ReadVariableOp¢,sequential_7/conv2d_28/Conv2D/ReadVariableOp¢-sequential_7/conv2d_29/BiasAdd/ReadVariableOp¢,sequential_7/conv2d_29/Conv2D/ReadVariableOp¢-sequential_7/conv2d_30/BiasAdd/ReadVariableOp¢,sequential_7/conv2d_30/Conv2D/ReadVariableOp¢-sequential_7/conv2d_31/BiasAdd/ReadVariableOp¢,sequential_7/conv2d_31/Conv2D/ReadVariableOpt
#sequential_7/up_sampling2d_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
%sequential_7/up_sampling2d_12/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      «
!sequential_7/up_sampling2d_12/mulMul,sequential_7/up_sampling2d_12/Const:output:0.sequential_7/up_sampling2d_12/Const_1:output:0*
T0*
_output_shapes
:Ñ
:sequential_7/up_sampling2d_12/resize/ResizeNearestNeighborResizeNearestNeighborz%sequential_7/up_sampling2d_12/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
half_pixel_centers(ª
,sequential_7/conv2d_28/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
sequential_7/conv2d_28/Conv2DConv2DKsequential_7/up_sampling2d_12/resize/ResizeNearestNeighbor:resized_images:04sequential_7/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
paddingSAME*
strides
 
-sequential_7/conv2d_28/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Â
sequential_7/conv2d_28/BiasAddBiasAdd&sequential_7/conv2d_28/Conv2D:output:05sequential_7/conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@
sequential_7/conv2d_28/ReluRelu'sequential_7/conv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@t
#sequential_7/up_sampling2d_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"
   
   v
%sequential_7/up_sampling2d_13/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      «
!sequential_7/up_sampling2d_13/mulMul,sequential_7/up_sampling2d_13/Const:output:0.sequential_7/up_sampling2d_13/Const_1:output:0*
T0*
_output_shapes
:ù
:sequential_7/up_sampling2d_13/resize/ResizeNearestNeighborResizeNearestNeighbor)sequential_7/conv2d_28/Relu:activations:0%sequential_7/up_sampling2d_13/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers(ª
,sequential_7/conv2d_29/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0
sequential_7/conv2d_29/Conv2DConv2DKsequential_7/up_sampling2d_13/resize/ResizeNearestNeighbor:resized_images:04sequential_7/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
 
-sequential_7/conv2d_29/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_29_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Â
sequential_7/conv2d_29/BiasAddBiasAdd&sequential_7/conv2d_29/Conv2D:output:05sequential_7/conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
sequential_7/conv2d_29/ReluRelu'sequential_7/conv2d_29/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
#sequential_7/up_sampling2d_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
%sequential_7/up_sampling2d_14/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      «
!sequential_7/up_sampling2d_14/mulMul,sequential_7/up_sampling2d_14/Const:output:0.sequential_7/up_sampling2d_14/Const_1:output:0*
T0*
_output_shapes
:ù
:sequential_7/up_sampling2d_14/resize/ResizeNearestNeighborResizeNearestNeighbor)sequential_7/conv2d_29/Relu:activations:0%sequential_7/up_sampling2d_14/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
half_pixel_centers(ª
,sequential_7/conv2d_30/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
sequential_7/conv2d_30/Conv2DConv2DKsequential_7/up_sampling2d_14/resize/ResizeNearestNeighbor:resized_images:04sequential_7/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
 
-sequential_7/conv2d_30/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_30_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Â
sequential_7/conv2d_30/BiasAddBiasAdd&sequential_7/conv2d_30/Conv2D:output:05sequential_7/conv2d_30/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
sequential_7/conv2d_30/ReluRelu'sequential_7/conv2d_30/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((t
#sequential_7/up_sampling2d_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"(   (   v
%sequential_7/up_sampling2d_15/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      «
!sequential_7/up_sampling2d_15/mulMul,sequential_7/up_sampling2d_15/Const:output:0.sequential_7/up_sampling2d_15/Const_1:output:0*
T0*
_output_shapes
:ù
:sequential_7/up_sampling2d_15/resize/ResizeNearestNeighborResizeNearestNeighbor)sequential_7/conv2d_30/Relu:activations:0%sequential_7/up_sampling2d_15/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
half_pixel_centers(ª
,sequential_7/conv2d_31/Conv2D/ReadVariableOpReadVariableOp5sequential_7_conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
sequential_7/conv2d_31/Conv2DConv2DKsequential_7/up_sampling2d_15/resize/ResizeNearestNeighbor:resized_images:04sequential_7/conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
paddingSAME*
strides
 
-sequential_7/conv2d_31/BiasAdd/ReadVariableOpReadVariableOp6sequential_7_conv2d_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Â
sequential_7/conv2d_31/BiasAddBiasAdd&sequential_7/conv2d_31/Conv2D:output:05sequential_7/conv2d_31/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
sequential_7/conv2d_31/SigmoidSigmoid'sequential_7/conv2d_31/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPy
IdentityIdentity"sequential_7/conv2d_31/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPÂ
NoOpNoOp.^sequential_7/conv2d_28/BiasAdd/ReadVariableOp-^sequential_7/conv2d_28/Conv2D/ReadVariableOp.^sequential_7/conv2d_29/BiasAdd/ReadVariableOp-^sequential_7/conv2d_29/Conv2D/ReadVariableOp.^sequential_7/conv2d_30/BiasAdd/ReadVariableOp-^sequential_7/conv2d_30/Conv2D/ReadVariableOp.^sequential_7/conv2d_31/BiasAdd/ReadVariableOp-^sequential_7/conv2d_31/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2^
-sequential_7/conv2d_28/BiasAdd/ReadVariableOp-sequential_7/conv2d_28/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_28/Conv2D/ReadVariableOp,sequential_7/conv2d_28/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_29/BiasAdd/ReadVariableOp-sequential_7/conv2d_29/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_29/Conv2D/ReadVariableOp,sequential_7/conv2d_29/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_30/BiasAdd/ReadVariableOp-sequential_7/conv2d_30/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_30/Conv2D/ReadVariableOp,sequential_7/conv2d_30/Conv2D/ReadVariableOp2^
-sequential_7/conv2d_31/BiasAdd/ReadVariableOp-sequential_7/conv2d_31/BiasAdd/ReadVariableOp2\
,sequential_7/conv2d_31/Conv2D/ReadVariableOp,sequential_7/conv2d_31/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@

_user_specified_namez
ï
ý
D__inference_conv2d_31_layer_call_and_return_conditional_losses_25320

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿp
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿt
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²

Ý
,__inference_sequential_7_layer_call_fn_23296
input_10!
unknown:@@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCallÉ
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_23277
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
input_10
Ð	
ö
B__inference_dense_6_layer_call_and_return_conditional_losses_23558

inputs2
matmul_readvariableop_resource:
À.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
ð
ý
D__inference_conv2d_29_layer_call_and_return_conditional_losses_23234

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*º
serving_default¦
C
input_98
serving_default_input_9:0ÿÿÿÿÿÿÿÿÿPPC
decoder8
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿPPtensorflow/serving/predict:îÝ
¦
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
²
encoder
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
»

&kernel
'bias
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
²
4decoder
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
ã
;iter

<beta_1

=beta_2
	>decay
?learning_ratemm &m¡'m¢@m£Am¤Bm¥Cm¦Dm§Em¨Fm©GmªHm«Im¬Jm­Km®Lm¯Mm°Nm±Om²v³v´&vµ'v¶@v·Av¸Bv¹CvºDv»Ev¼Fv½Gv¾Hv¿IvÀJvÁKvÂLvÃMvÄNvÅOvÆ"
	optimizer
¶
@0
A1
B2
C3
D4
E5
F6
G7
8
9
&10
'11
H12
I13
J14
K15
L16
M17
N18
O19"
trackable_list_wrapper
¶
@0
A1
B2
C3
D4
E5
F6
G7
8
9
&10
'11
H12
I13
J14
K15
L16
M17
N18
O19"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
"__inference_AE_layer_call_fn_23707
"__inference_AE_layer_call_fn_24241
"__inference_AE_layer_call_fn_24286
"__inference_AE_layer_call_fn_24090À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Â2¿
=__inference_AE_layer_call_and_return_conditional_losses_24387
=__inference_AE_layer_call_and_return_conditional_losses_24488
=__inference_AE_layer_call_and_return_conditional_losses_24140
=__inference_AE_layer_call_and_return_conditional_losses_24190À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ËBÈ
 __inference__wrapped_model_22851input_9"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
Userving_default"
signature_map
Æ
Vlayer_with_weights-0
Vlayer-0
Wlayer_with_weights-1
Wlayer-1
Xlayer_with_weights-2
Xlayer-2
Ylayer_with_weights-3
Ylayer-3
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_sequential
X
@0
A1
B2
C3
D4
E5
F6
G7"
trackable_list_wrapper
X
@0
A1
B2
C3
D4
E5
F6
G7"
trackable_list_wrapper
 "
trackable_list_wrapper
­
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
'__inference_encoder_layer_call_fn_24556
'__inference_encoder_layer_call_fn_24577´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Â2¿
B__inference_encoder_layer_call_and_return_conditional_losses_24609
B__inference_encoder_layer_call_and_return_conditional_losses_24641´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_flatten_3_layer_call_fn_24646¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_flatten_3_layer_call_and_return_conditional_losses_24652¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
": 
À2dense_6/kernel
:2dense_6/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_dense_6_layer_call_fn_24661¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_6_layer_call_and_return_conditional_losses_24671¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
": 
À2dense_7/kernel
:À2dense_7/bias
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_dense_7_layer_call_fn_24680¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_7_layer_call_and_return_conditional_losses_24691¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_reshape_3_layer_call_fn_24696¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_reshape_3_layer_call_and_return_conditional_losses_24710¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 

ylayer-0
zlayer_with_weights-0
zlayer-1
{layer-2
|layer_with_weights-1
|layer-3
}layer-4
~layer_with_weights-2
~layer-5
layer-6
layer_with_weights-3
layer-7
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_sequential
X
H0
I1
J2
K3
L4
M5
N6
O7"
trackable_list_wrapper
X
H0
I1
J2
K3
L4
M5
N6
O7"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
2
'__inference_decoder_layer_call_fn_24731
'__inference_decoder_layer_call_fn_24752¯
¦²¢
FullArgSpec$
args
jself
jz

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
½2º
B__inference_decoder_layer_call_and_return_conditional_losses_24800
B__inference_decoder_layer_call_and_return_conditional_losses_24848¯
¦²¢
FullArgSpec$
args
jself
jz

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
*:(	2conv2d_24/kernel
:	2conv2d_24/bias
*:(	2conv2d_25/kernel
:2conv2d_25/bias
*:( 2conv2d_26/kernel
: 2conv2d_26/bias
*:( @2conv2d_27/kernel
:@2conv2d_27/bias
*:(@@2conv2d_28/kernel
:@2conv2d_28/bias
*:(@ 2conv2d_29/kernel
: 2conv2d_29/bias
*:( 2conv2d_30/kernel
:2conv2d_30/bias
*:(2conv2d_31/kernel
:2conv2d_31/bias
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÊBÇ
#__inference_signature_wrapper_24535input_9"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Á

@kernel
Abias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Á

Bkernel
Cbias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Á

Dkernel
Ebias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Á

Fkernel
Gbias
	variables
 trainable_variables
¡regularization_losses
¢	keras_api
£__call__
+¤&call_and_return_all_conditional_losses"
_tf_keras_layer
X
@0
A1
B2
C3
D4
E5
F6
G7"
trackable_list_wrapper
X
@0
A1
B2
C3
D4
E5
F6
G7"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¥non_trainable_variables
¦layers
§metrics
 ¨layer_regularization_losses
©layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
þ2û
,__inference_sequential_6_layer_call_fn_22946
,__inference_sequential_6_layer_call_fn_24869
,__inference_sequential_6_layer_call_fn_24890
,__inference_sequential_6_layer_call_fn_23073À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ê2ç
G__inference_sequential_6_layer_call_and_return_conditional_losses_24922
G__inference_sequential_6_layer_call_and_return_conditional_losses_24954
G__inference_sequential_6_layer_call_and_return_conditional_losses_23097
G__inference_sequential_6_layer_call_and_return_conditional_losses_23121À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
'
0"
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
«
ª	variables
«trainable_variables
¬regularization_losses
­	keras_api
®__call__
+¯&call_and_return_all_conditional_losses"
_tf_keras_layer
Á

Hkernel
Ibias
°	variables
±trainable_variables
²regularization_losses
³	keras_api
´__call__
+µ&call_and_return_all_conditional_losses"
_tf_keras_layer
«
¶	variables
·trainable_variables
¸regularization_losses
¹	keras_api
º__call__
+»&call_and_return_all_conditional_losses"
_tf_keras_layer
Á

Jkernel
Kbias
¼	variables
½trainable_variables
¾regularization_losses
¿	keras_api
À__call__
+Á&call_and_return_all_conditional_losses"
_tf_keras_layer
«
Â	variables
Ãtrainable_variables
Äregularization_losses
Å	keras_api
Æ__call__
+Ç&call_and_return_all_conditional_losses"
_tf_keras_layer
Á

Lkernel
Mbias
È	variables
Étrainable_variables
Êregularization_losses
Ë	keras_api
Ì__call__
+Í&call_and_return_all_conditional_losses"
_tf_keras_layer
«
Î	variables
Ïtrainable_variables
Ðregularization_losses
Ñ	keras_api
Ò__call__
+Ó&call_and_return_all_conditional_losses"
_tf_keras_layer
Á

Nkernel
Obias
Ô	variables
Õtrainable_variables
Öregularization_losses
×	keras_api
Ø__call__
+Ù&call_and_return_all_conditional_losses"
_tf_keras_layer
X
H0
I1
J2
K3
L4
M5
N6
O7"
trackable_list_wrapper
X
H0
I1
J2
K3
L4
M5
N6
O7"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Únon_trainable_variables
Ûlayers
Ümetrics
 Ýlayer_regularization_losses
Þlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
þ2û
,__inference_sequential_7_layer_call_fn_23296
,__inference_sequential_7_layer_call_fn_24975
,__inference_sequential_7_layer_call_fn_24996
,__inference_sequential_7_layer_call_fn_23427À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ê2ç
G__inference_sequential_7_layer_call_and_return_conditional_losses_25044
G__inference_sequential_7_layer_call_and_return_conditional_losses_25092
G__inference_sequential_7_layer_call_and_return_conditional_losses_23455
G__inference_sequential_7_layer_call_and_return_conditional_losses_23483À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
'
40"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

ßtotal

àcount
á	variables
â	keras_api"
_tf_keras_metric
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ãnon_trainable_variables
älayers
åmetrics
 ælayer_regularization_losses
çlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_24_layer_call_fn_25101¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_24_layer_call_and_return_conditional_losses_25112¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ènon_trainable_variables
élayers
êmetrics
 ëlayer_regularization_losses
ìlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_25_layer_call_fn_25121¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_25_layer_call_and_return_conditional_losses_25132¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ínon_trainable_variables
îlayers
ïmetrics
 ðlayer_regularization_losses
ñlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_26_layer_call_fn_25141¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_26_layer_call_and_return_conditional_losses_25152¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ònon_trainable_variables
ólayers
ômetrics
 õlayer_regularization_losses
ölayer_metrics
	variables
 trainable_variables
¡regularization_losses
£__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_27_layer_call_fn_25161¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_27_layer_call_and_return_conditional_losses_25172¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
<
V0
W1
X2
Y3"
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
¸
÷non_trainable_variables
ølayers
ùmetrics
 úlayer_regularization_losses
ûlayer_metrics
ª	variables
«trainable_variables
¬regularization_losses
®__call__
+¯&call_and_return_all_conditional_losses
'¯"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_up_sampling2d_12_layer_call_fn_25177¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_up_sampling2d_12_layer_call_and_return_conditional_losses_25189¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ünon_trainable_variables
ýlayers
þmetrics
 ÿlayer_regularization_losses
layer_metrics
°	variables
±trainable_variables
²regularization_losses
´__call__
+µ&call_and_return_all_conditional_losses
'µ"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_28_layer_call_fn_25198¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_28_layer_call_and_return_conditional_losses_25209¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¶	variables
·trainable_variables
¸regularization_losses
º__call__
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_up_sampling2d_13_layer_call_fn_25214¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_up_sampling2d_13_layer_call_and_return_conditional_losses_25226¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¼	variables
½trainable_variables
¾regularization_losses
À__call__
+Á&call_and_return_all_conditional_losses
'Á"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_29_layer_call_fn_25235¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_29_layer_call_and_return_conditional_losses_25246¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Â	variables
Ãtrainable_variables
Äregularization_losses
Æ__call__
+Ç&call_and_return_all_conditional_losses
'Ç"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_up_sampling2d_14_layer_call_fn_25251¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_up_sampling2d_14_layer_call_and_return_conditional_losses_25263¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
È	variables
Étrainable_variables
Êregularization_losses
Ì__call__
+Í&call_and_return_all_conditional_losses
'Í"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_30_layer_call_fn_25272¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_30_layer_call_and_return_conditional_losses_25283¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Î	variables
Ïtrainable_variables
Ðregularization_losses
Ò__call__
+Ó&call_and_return_all_conditional_losses
'Ó"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_up_sampling2d_15_layer_call_fn_25288¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_up_sampling2d_15_layer_call_and_return_conditional_losses_25300¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ô	variables
Õtrainable_variables
Öregularization_losses
Ø__call__
+Ù&call_and_return_all_conditional_losses
'Ù"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_31_layer_call_fn_25309¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_31_layer_call_and_return_conditional_losses_25320¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
Y
y0
z1
{2
|3
}4
~5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
ß0
à1"
trackable_list_wrapper
.
á	variables"
_generic_user_object
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
':%
À2Adam/dense_6/kernel/m
 :2Adam/dense_6/bias/m
':%
À2Adam/dense_7/kernel/m
 :À2Adam/dense_7/bias/m
/:-	2Adam/conv2d_24/kernel/m
!:	2Adam/conv2d_24/bias/m
/:-	2Adam/conv2d_25/kernel/m
!:2Adam/conv2d_25/bias/m
/:- 2Adam/conv2d_26/kernel/m
!: 2Adam/conv2d_26/bias/m
/:- @2Adam/conv2d_27/kernel/m
!:@2Adam/conv2d_27/bias/m
/:-@@2Adam/conv2d_28/kernel/m
!:@2Adam/conv2d_28/bias/m
/:-@ 2Adam/conv2d_29/kernel/m
!: 2Adam/conv2d_29/bias/m
/:- 2Adam/conv2d_30/kernel/m
!:2Adam/conv2d_30/bias/m
/:-2Adam/conv2d_31/kernel/m
!:2Adam/conv2d_31/bias/m
':%
À2Adam/dense_6/kernel/v
 :2Adam/dense_6/bias/v
':%
À2Adam/dense_7/kernel/v
 :À2Adam/dense_7/bias/v
/:-	2Adam/conv2d_24/kernel/v
!:	2Adam/conv2d_24/bias/v
/:-	2Adam/conv2d_25/kernel/v
!:2Adam/conv2d_25/bias/v
/:- 2Adam/conv2d_26/kernel/v
!: 2Adam/conv2d_26/bias/v
/:- @2Adam/conv2d_27/kernel/v
!:@2Adam/conv2d_27/bias/v
/:-@@2Adam/conv2d_28/kernel/v
!:@2Adam/conv2d_28/bias/v
/:-@ 2Adam/conv2d_29/kernel/v
!: 2Adam/conv2d_29/bias/v
/:- 2Adam/conv2d_30/kernel/v
!:2Adam/conv2d_30/bias/v
/:-2Adam/conv2d_31/kernel/v
!:2Adam/conv2d_31/bias/vÉ
=__inference_AE_layer_call_and_return_conditional_losses_24140@ABCDEFG&'HIJKLMNO@¢=
6¢3
)&
input_9ÿÿÿÿÿÿÿÿÿPP
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿPP
 É
=__inference_AE_layer_call_and_return_conditional_losses_24190@ABCDEFG&'HIJKLMNO@¢=
6¢3
)&
input_9ÿÿÿÿÿÿÿÿÿPP
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿPP
 È
=__inference_AE_layer_call_and_return_conditional_losses_24387@ABCDEFG&'HIJKLMNO?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿPP
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿPP
 È
=__inference_AE_layer_call_and_return_conditional_losses_24488@ABCDEFG&'HIJKLMNO?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿPP
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿPP
  
"__inference_AE_layer_call_fn_23707z@ABCDEFG&'HIJKLMNO@¢=
6¢3
)&
input_9ÿÿÿÿÿÿÿÿÿPP
p 

 
ª " ÿÿÿÿÿÿÿÿÿPP 
"__inference_AE_layer_call_fn_24090z@ABCDEFG&'HIJKLMNO@¢=
6¢3
)&
input_9ÿÿÿÿÿÿÿÿÿPP
p

 
ª " ÿÿÿÿÿÿÿÿÿPP
"__inference_AE_layer_call_fn_24241y@ABCDEFG&'HIJKLMNO?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿPP
p 

 
ª " ÿÿÿÿÿÿÿÿÿPP
"__inference_AE_layer_call_fn_24286y@ABCDEFG&'HIJKLMNO?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿPP
p

 
ª " ÿÿÿÿÿÿÿÿÿPP°
 __inference__wrapped_model_22851@ABCDEFG&'HIJKLMNO8¢5
.¢+
)&
input_9ÿÿÿÿÿÿÿÿÿPP
ª "9ª6
4
decoder)&
decoderÿÿÿÿÿÿÿÿÿPP´
D__inference_conv2d_24_layer_call_and_return_conditional_losses_25112l@A7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿPP
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((	
 
)__inference_conv2d_24_layer_call_fn_25101_@A7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿPP
ª " ÿÿÿÿÿÿÿÿÿ((	´
D__inference_conv2d_25_layer_call_and_return_conditional_losses_25132lBC7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((	
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
)__inference_conv2d_25_layer_call_fn_25121_BC7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((	
ª " ÿÿÿÿÿÿÿÿÿ´
D__inference_conv2d_26_layer_call_and_return_conditional_losses_25152lDE7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ

 
 
)__inference_conv2d_26_layer_call_fn_25141_DE7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿ

 ´
D__inference_conv2d_27_layer_call_and_return_conditional_losses_25172lFG7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_conv2d_27_layer_call_fn_25161_FG7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ

 
ª " ÿÿÿÿÿÿÿÿÿ@Ù
D__inference_conv2d_28_layer_call_and_return_conditional_losses_25209HII¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ±
)__inference_conv2d_28_layer_call_fn_25198HII¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ù
D__inference_conv2d_29_layer_call_and_return_conditional_losses_25246JKI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 ±
)__inference_conv2d_29_layer_call_fn_25235JKI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Ù
D__inference_conv2d_30_layer_call_and_return_conditional_losses_25283LMI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ±
)__inference_conv2d_30_layer_call_fn_25272LMI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÙ
D__inference_conv2d_31_layer_call_and_return_conditional_losses_25320NOI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ±
)__inference_conv2d_31_layer_call_fn_25309NOI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ·
B__inference_decoder_layer_call_and_return_conditional_losses_24800qHIJKLMNO6¢3
,¢)
# 
zÿÿÿÿÿÿÿÿÿ@
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿPP
 ·
B__inference_decoder_layer_call_and_return_conditional_losses_24848qHIJKLMNO6¢3
,¢)
# 
zÿÿÿÿÿÿÿÿÿ@
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿPP
 
'__inference_decoder_layer_call_fn_24731dHIJKLMNO6¢3
,¢)
# 
zÿÿÿÿÿÿÿÿÿ@
p 
ª " ÿÿÿÿÿÿÿÿÿPP
'__inference_decoder_layer_call_fn_24752dHIJKLMNO6¢3
,¢)
# 
zÿÿÿÿÿÿÿÿÿ@
p
ª " ÿÿÿÿÿÿÿÿÿPP¤
B__inference_dense_6_layer_call_and_return_conditional_losses_24671^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 |
'__inference_dense_6_layer_call_fn_24661Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "ÿÿÿÿÿÿÿÿÿ¤
B__inference_dense_7_layer_call_and_return_conditional_losses_24691^&'0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 |
'__inference_dense_7_layer_call_fn_24680Q&'0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÀ¼
B__inference_encoder_layer_call_and_return_conditional_losses_24609v@ABCDEFG;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿPP
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 ¼
B__inference_encoder_layer_call_and_return_conditional_losses_24641v@ABCDEFG;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿPP
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
'__inference_encoder_layer_call_fn_24556i@ABCDEFG;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿPP
p 
ª " ÿÿÿÿÿÿÿÿÿ@
'__inference_encoder_layer_call_fn_24577i@ABCDEFG;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿPP
p
ª " ÿÿÿÿÿÿÿÿÿ@©
D__inference_flatten_3_layer_call_and_return_conditional_losses_24652a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 
)__inference_flatten_3_layer_call_fn_24646T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿÀ©
D__inference_reshape_3_layer_call_and_return_conditional_losses_24710a0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_reshape_3_layer_call_fn_24696T0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª " ÿÿÿÿÿÿÿÿÿ@Ï
G__inference_sequential_6_layer_call_and_return_conditional_losses_23097@ABCDEFGH¢E
>¢;
1.
conv2d_24_inputÿÿÿÿÿÿÿÿÿPP
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 Ï
G__inference_sequential_6_layer_call_and_return_conditional_losses_23121@ABCDEFGH¢E
>¢;
1.
conv2d_24_inputÿÿÿÿÿÿÿÿÿPP
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 Å
G__inference_sequential_6_layer_call_and_return_conditional_losses_24922z@ABCDEFG?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿPP
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 Å
G__inference_sequential_6_layer_call_and_return_conditional_losses_24954z@ABCDEFG?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿPP
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 ¦
,__inference_sequential_6_layer_call_fn_22946v@ABCDEFGH¢E
>¢;
1.
conv2d_24_inputÿÿÿÿÿÿÿÿÿPP
p 

 
ª " ÿÿÿÿÿÿÿÿÿ@¦
,__inference_sequential_6_layer_call_fn_23073v@ABCDEFGH¢E
>¢;
1.
conv2d_24_inputÿÿÿÿÿÿÿÿÿPP
p

 
ª " ÿÿÿÿÿÿÿÿÿ@
,__inference_sequential_6_layer_call_fn_24869m@ABCDEFG?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿPP
p 

 
ª " ÿÿÿÿÿÿÿÿÿ@
,__inference_sequential_6_layer_call_fn_24890m@ABCDEFG?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿPP
p

 
ª " ÿÿÿÿÿÿÿÿÿ@Ú
G__inference_sequential_7_layer_call_and_return_conditional_losses_23455HIJKLMNOA¢>
7¢4
*'
input_10ÿÿÿÿÿÿÿÿÿ@
p 

 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ú
G__inference_sequential_7_layer_call_and_return_conditional_losses_23483HIJKLMNOA¢>
7¢4
*'
input_10ÿÿÿÿÿÿÿÿÿ@
p

 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
G__inference_sequential_7_layer_call_and_return_conditional_losses_25044zHIJKLMNO?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿPP
 Å
G__inference_sequential_7_layer_call_and_return_conditional_losses_25092zHIJKLMNO?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿPP
 ²
,__inference_sequential_7_layer_call_fn_23296HIJKLMNOA¢>
7¢4
*'
input_10ÿÿÿÿÿÿÿÿÿ@
p 

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ²
,__inference_sequential_7_layer_call_fn_23427HIJKLMNOA¢>
7¢4
*'
input_10ÿÿÿÿÿÿÿÿÿ@
p

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¯
,__inference_sequential_7_layer_call_fn_24975HIJKLMNO?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@
p 

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¯
,__inference_sequential_7_layer_call_fn_24996HIJKLMNO?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@
p

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¾
#__inference_signature_wrapper_24535@ABCDEFG&'HIJKLMNOC¢@
¢ 
9ª6
4
input_9)&
input_9ÿÿÿÿÿÿÿÿÿPP"9ª6
4
decoder)&
decoderÿÿÿÿÿÿÿÿÿPPî
K__inference_up_sampling2d_12_layer_call_and_return_conditional_losses_25189R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_up_sampling2d_12_layer_call_fn_25177R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_up_sampling2d_13_layer_call_and_return_conditional_losses_25226R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_up_sampling2d_13_layer_call_fn_25214R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_up_sampling2d_14_layer_call_and_return_conditional_losses_25263R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_up_sampling2d_14_layer_call_fn_25251R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_up_sampling2d_15_layer_call_and_return_conditional_losses_25300R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_up_sampling2d_15_layer_call_fn_25288R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ