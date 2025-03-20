.class public final Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;
.super Lorg/jacoco/agent/rt/internal_773e439/asm/MethodVisitor;
.source "LabelFlowAnalyzer.java"


# instance fields
.field first:Z

.field successor:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_773e439/asm/MethodVisitor;-><init>(I)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 61
    return-void
.end method

.method public static markLabels(Lorg/jacoco/agent/rt/internal_773e439/asm/tree/MethodNode;)V
    .locals 3
    .param p0, "method"    # Lorg/jacoco/agent/rt/internal_773e439/asm/tree/MethodNode;

    .prologue
    .line 37
    new-instance v1, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;-><init>()V

    .line 38
    .local v1, "lfa":Lorg/jacoco/agent/rt/internal_773e439/asm/MethodVisitor;
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_773e439/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 39
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_773e439/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jacoco/agent/rt/internal_773e439/asm/tree/TryCatchBlockNode;

    invoke-virtual {v2, v1}, Lorg/jacoco/agent/rt/internal_773e439/asm/tree/TryCatchBlockNode;->accept(Lorg/jacoco/agent/rt/internal_773e439/asm/MethodVisitor;)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_773e439/asm/tree/MethodNode;->instructions:Lorg/jacoco/agent/rt/internal_773e439/asm/tree/InsnList;

    invoke-virtual {v2, v1}, Lorg/jacoco/agent/rt/internal_773e439/asm/tree/InsnList;->accept(Lorg/jacoco/agent/rt/internal_773e439/asm/MethodVisitor;)V

    .line 42
    return-void
.end method

.method private static setTargetIfNotDone(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V
    .locals 1
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 120
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->isDone(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->setTarget(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 122
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->setDone(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 124
    :cond_0
    return-void
.end method

.method private visitSwitchInsn(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;[Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V
    .locals 5
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    .param p2, "labels"    # [Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->resetDone(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 110
    invoke-static {p2}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->resetDone([Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 111
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->setTargetIfNotDone(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 112
    move-object v0, p2

    .local v0, "arr$":[Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 113
    .local v2, "l":Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    invoke-static {v2}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->setTargetIfNotDone(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v2    # "l":Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    :cond_0
    iput-boolean v4, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 116
    iput-boolean v4, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 117
    return-void
.end method


# virtual methods
.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 170
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 1
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 196
    return-void
.end method

.method public visitInsn(I)V
    .locals 2
    .param p1, "opcode"    # I

    .prologue
    const/4 v1, 0x0

    .line 128
    sparse-switch p1, :sswitch_data_0

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 144
    :goto_0
    iput-boolean v1, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 145
    return-void

    .line 130
    :sswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Subroutines not supported."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 138
    :sswitch_1
    iput-boolean v1, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    goto :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        0xa9 -> :sswitch_0
        0xac -> :sswitch_1
        0xad -> :sswitch_1
        0xae -> :sswitch_1
        0xaf -> :sswitch_1
        0xb0 -> :sswitch_1
        0xb1 -> :sswitch_1
        0xbf -> :sswitch_1
    .end sparse-switch
.end method

.method public visitIntInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 151
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_773e439/asm/Handle;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 184
    return-void
.end method

.method public visitJumpInsn(ILorg/jacoco/agent/rt/internal_773e439/asm/Label;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-static {p2}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->setTarget(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 79
    const/16 v0, 0xa8

    if-ne p1, v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Subroutines not supported."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 82
    :cond_0
    const/16 v0, 0xa7

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 83
    iput-boolean v1, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 84
    return-void

    :cond_1
    move v0, v1

    .line 82
    goto :goto_0
.end method

.method public visitLabel(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V
    .locals 1
    .param p1, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 88
    iget-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->first:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->setTarget(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 91
    :cond_0
    iget-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    if-eqz v0, :cond_1

    .line 92
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->setSuccessor(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 94
    :cond_1
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 1
    .param p1, "cst"    # Ljava/lang/Object;

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 190
    return-void
.end method

.method public visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;[I[Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V
    .locals 0
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 105
    invoke-direct {p0, p1, p3}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->visitSwitchInsn(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;[Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 106
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 177
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 202
    return-void
.end method

.method public varargs visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_773e439/asm/Label;[Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    .param p4, "labels"    # [Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 99
    invoke-direct {p0, p3, p4}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->visitSwitchInsn(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;[Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 100
    return-void
.end method

.method public visitTryCatchBlock(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;Lorg/jacoco/agent/rt/internal_773e439/asm/Label;Lorg/jacoco/agent/rt/internal_773e439/asm/Label;Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    .param p2, "end"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    .param p3, "handler"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->setTarget(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 73
    invoke-static {p3}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->setTarget(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 74
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 163
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 157
    return-void
.end method
