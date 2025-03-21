.class public final Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;
.super Lorg/jacoco/agent/rt/internal_773e439/asm/MethodVisitor;
.source "MethodProbesAdapter.java"


# instance fields
.field private analyzer:Lorg/jacoco/agent/rt/internal_773e439/asm/commons/AnalyzerAdapter;

.field private final idGenerator:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IProbeIdGenerator;

.field private final probesVisitor:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;

.field private final tryCatchProbeLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jacoco/agent/rt/internal_773e439/asm/Label;",
            "Lorg/jacoco/agent/rt/internal_773e439/asm/Label;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IProbeIdGenerator;)V
    .locals 1
    .param p1, "probesVisitor"    # Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;
    .param p2, "idGenerator"    # Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IProbeIdGenerator;

    .prologue
    .line 47
    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_773e439/asm/MethodVisitor;-><init>(ILorg/jacoco/agent/rt/internal_773e439/asm/MethodVisitor;)V

    .line 48
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->probesVisitor:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;

    .line 49
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->idGenerator:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IProbeIdGenerator;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->tryCatchProbeLabels:Ljava/util/Map;

    .line 51
    return-void
.end method

.method private frame(I)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IFrame;
    .locals 1
    .param p1, "popCount"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->analyzer:Lorg/jacoco/agent/rt/internal_773e439/asm/commons/AnalyzerAdapter;

    invoke-static {v0, p1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/FrameSnapshot;->create(Lorg/jacoco/agent/rt/internal_773e439/asm/commons/AnalyzerAdapter;I)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IFrame;

    move-result-object v0

    return-object v0
.end method

.method private jumpPopCount(I)I
    .locals 1
    .param p1, "opcode"    # I

    .prologue
    .line 121
    sparse-switch p1, :sswitch_data_0

    .line 134
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 123
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        0x99 -> :sswitch_1
        0x9a -> :sswitch_1
        0x9b -> :sswitch_1
        0x9c -> :sswitch_1
        0x9d -> :sswitch_1
        0x9e -> :sswitch_1
        0xa7 -> :sswitch_0
        0xc6 -> :sswitch_1
        0xc7 -> :sswitch_1
    .end sparse-switch
.end method

.method private markLabels(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;[Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Z
    .locals 6
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    .param p2, "labels"    # [Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 161
    const/4 v4, 0x0

    .line 162
    .local v4, "probe":Z
    invoke-static {p2}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->resetDone([Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 163
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->isMultiTarget(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->idGenerator:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IProbeIdGenerator;

    invoke-interface {v5}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IProbeIdGenerator;->nextId()I

    move-result v5

    invoke-static {p1, v5}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->setProbeId(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;I)V

    .line 165
    const/4 v4, 0x1

    .line 167
    :cond_0
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->setDone(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 168
    move-object v0, p2

    .local v0, "arr$":[Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 169
    .local v2, "l":Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    invoke-static {v2}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->isMultiTarget(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v2}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->isDone(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 170
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->idGenerator:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IProbeIdGenerator;

    invoke-interface {v5}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IProbeIdGenerator;->nextId()I

    move-result v5

    invoke-static {v2, v5}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->setProbeId(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;I)V

    .line 171
    const/4 v4, 0x1

    .line 173
    :cond_1
    invoke-static {v2}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->setDone(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v2    # "l":Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    :cond_2
    return v4
.end method


# virtual methods
.method public setAnalyzer(Lorg/jacoco/agent/rt/internal_773e439/asm/commons/AnalyzerAdapter;)V
    .locals 0
    .param p1, "analyzer"    # Lorg/jacoco/agent/rt/internal_773e439/asm/commons/AnalyzerAdapter;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->analyzer:Lorg/jacoco/agent/rt/internal_773e439/asm/commons/AnalyzerAdapter;

    .line 62
    return-void
.end method

.method public visitInsn(I)V
    .locals 2
    .param p1, "opcode"    # I

    .prologue
    .line 94
    sparse-switch p1, :sswitch_data_0

    .line 105
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->probesVisitor:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;->visitInsn(I)V

    .line 108
    :goto_0
    return-void

    .line 102
    :sswitch_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->probesVisitor:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->idGenerator:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IProbeIdGenerator;

    invoke-interface {v1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IProbeIdGenerator;->nextId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;->visitInsnWithProbe(II)V

    goto :goto_0

    .line 94
    nop

    :sswitch_data_0
    .sparse-switch
        0xac -> :sswitch_0
        0xad -> :sswitch_0
        0xae -> :sswitch_0
        0xaf -> :sswitch_0
        0xb0 -> :sswitch_0
        0xb1 -> :sswitch_0
        0xbf -> :sswitch_0
    .end sparse-switch
.end method

.method public visitJumpInsn(ILorg/jacoco/agent/rt/internal_773e439/asm/Label;)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 112
    invoke-static {p2}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->isMultiTarget(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->probesVisitor:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->idGenerator:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IProbeIdGenerator;

    invoke-interface {v1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IProbeIdGenerator;->nextId()I

    move-result v1

    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->jumpPopCount(I)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->frame(I)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IFrame;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;->visitJumpInsnWithProbe(ILorg/jacoco/agent/rt/internal_773e439/asm/Label;ILorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IFrame;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->probesVisitor:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    goto :goto_0
.end method

.method public visitLabel(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V
    .locals 2
    .param p1, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 83
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->isMultiTarget(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->isSuccessor(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->tryCatchProbeLabels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->probesVisitor:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->tryCatchProbeLabels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    invoke-virtual {v1, v0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;->visitLabel(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->probesVisitor:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->idGenerator:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IProbeIdGenerator;

    invoke-interface {v1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IProbeIdGenerator;->nextId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;->visitProbe(I)V

    .line 89
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->probesVisitor:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;->visitLabel(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 90
    return-void
.end method

.method public visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;[I[Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V
    .locals 2
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 141
    invoke-direct {p0, p1, p3}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->markLabels(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;[Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->probesVisitor:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->frame(I)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IFrame;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;->visitLookupSwitchInsnWithProbes(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;[I[Lorg/jacoco/agent/rt/internal_773e439/asm/Label;Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IFrame;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->probesVisitor:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;->visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;[I[Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    goto :goto_0
.end method

.method public varargs visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_773e439/asm/Label;[Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V
    .locals 6
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    .param p4, "labels"    # [Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 152
    invoke-direct {p0, p3, p4}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->markLabels(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;[Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->probesVisitor:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->frame(I)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IFrame;

    move-result-object v5

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;->visitTableSwitchInsnWithProbes(IILorg/jacoco/agent/rt/internal_773e439/asm/Label;[Lorg/jacoco/agent/rt/internal_773e439/asm/Label;Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/IFrame;)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->probesVisitor:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;->visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_773e439/asm/Label;[Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    goto :goto_0
.end method

.method public visitTryCatchBlock(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;Lorg/jacoco/agent/rt/internal_773e439/asm/Label;Lorg/jacoco/agent/rt/internal_773e439/asm/Label;Ljava/lang/String;)V
    .locals 2
    .param p1, "start"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    .param p2, "end"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    .param p3, "handler"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->tryCatchProbeLabels:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->tryCatchProbeLabels:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "start":Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    check-cast p1, Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .line 78
    .restart local p1    # "start":Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->probesVisitor:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesVisitor;->visitTryCatchBlock(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;Lorg/jacoco/agent/rt/internal_773e439/asm/Label;Lorg/jacoco/agent/rt/internal_773e439/asm/Label;Ljava/lang/String;)V

    .line 79
    return-void

    .line 71
    :cond_1
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->isMultiTarget(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->isSuccessor(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    new-instance v0, Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_773e439/asm/Label;-><init>()V

    .line 74
    .local v0, "probeLabel":Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->setSuccessor(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 75
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/MethodProbesAdapter;->tryCatchProbeLabels:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-object p1, v0

    goto :goto_0
.end method
