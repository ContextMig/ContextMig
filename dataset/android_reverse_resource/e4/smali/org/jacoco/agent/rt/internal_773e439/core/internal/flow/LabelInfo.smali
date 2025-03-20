.class public final Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;
.super Ljava/lang/Object;
.source "LabelInfo.java"


# static fields
.field public static final NO_PROBE:I = -0x1


# instance fields
.field private done:Z

.field private instruction:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/Instruction;

.field private intermediate:Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

.field private multiTarget:Z

.field private probeid:I

.field private successor:Z

.field private target:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->target:Z

    .line 30
    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->multiTarget:Z

    .line 32
    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->successor:Z

    .line 34
    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->done:Z

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->probeid:I

    .line 38
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->intermediate:Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .line 40
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->instruction:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/Instruction;

    .line 44
    return-void
.end method

.method private static create(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;
    .locals 1
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 238
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->get(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 239
    .local v0, "info":Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;
    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;

    .end local v0    # "info":Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;
    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;-><init>()V

    .line 241
    .restart local v0    # "info":Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_773e439/asm/Label;->info:Ljava/lang/Object;

    .line 243
    :cond_0
    return-object v0
.end method

.method private static get(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 233
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_773e439/asm/Label;->info:Ljava/lang/Object;

    .line 234
    .local v0, "info":Ljava/lang/Object;
    instance-of v1, v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;

    .end local v0    # "info":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "info":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstruction(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/Instruction;
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 228
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->get(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 229
    .local v0, "info":Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->instruction:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/Instruction;

    goto :goto_0
.end method

.method public static getIntermediateLabel(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 202
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->get(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 203
    .local v0, "info":Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->intermediate:Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    goto :goto_0
.end method

.method public static getProbeId(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)I
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 175
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->get(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 176
    .local v0, "info":Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->probeid:I

    goto :goto_0
.end method

.method public static isDone(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Z
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 150
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->get(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 151
    .local v0, "info":Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->done:Z

    goto :goto_0
.end method

.method public static isMultiTarget(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Z
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 88
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->get(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 89
    .local v0, "info":Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->multiTarget:Z

    goto :goto_0
.end method

.method public static isSuccessor(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Z
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 103
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->get(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 104
    .local v0, "info":Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->successor:Z

    goto :goto_0
.end method

.method public static resetDone(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 124
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->get(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 125
    .local v0, "info":Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;
    if-eqz v0, :cond_0

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->done:Z

    .line 128
    :cond_0
    return-void
.end method

.method public static resetDone([Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V
    .locals 4
    .param p0, "labels"    # [Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "arr$":[Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 138
    .local v2, "label":Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    invoke-static {v2}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->resetDone(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v2    # "label":Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    :cond_0
    return-void
.end method

.method public static setDone(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V
    .locals 2
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 114
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->create(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->done:Z

    .line 115
    return-void
.end method

.method public static setInstruction(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/Instruction;)V
    .locals 1
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    .param p1, "instruction"    # Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/Instruction;

    .prologue
    .line 216
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->create(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;

    move-result-object v0

    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->instruction:Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/Instruction;

    .line 217
    return-void
.end method

.method public static setIntermediateLabel(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V
    .locals 1
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    .param p1, "intermediate"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    .line 190
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->create(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;

    move-result-object v0

    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->intermediate:Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .line 191
    return-void
.end method

.method public static setProbeId(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;I)V
    .locals 1
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;
    .param p1, "id"    # I

    .prologue
    .line 163
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->create(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;

    move-result-object v0

    iput p1, v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->probeid:I

    .line 164
    return-void
.end method

.method public static setSuccessor(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V
    .locals 3
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->create(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 70
    .local v0, "info":Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;
    iput-boolean v2, v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->successor:Z

    .line 71
    iget-boolean v1, v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->target:Z

    if-eqz v1, :cond_0

    .line 72
    iput-boolean v2, v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->multiTarget:Z

    .line 74
    :cond_0
    return-void
.end method

.method public static setTarget(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)V
    .locals 3
    .param p0, "label"    # Lorg/jacoco/agent/rt/internal_773e439/asm/Label;

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->create(Lorg/jacoco/agent/rt/internal_773e439/asm/Label;)Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;

    move-result-object v0

    .line 54
    .local v0, "info":Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;
    iget-boolean v1, v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->target:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->successor:Z

    if-eqz v1, :cond_1

    .line 55
    :cond_0
    iput-boolean v2, v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->multiTarget:Z

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_1
    iput-boolean v2, v0, Lorg/jacoco/agent/rt/internal_773e439/core/internal/flow/LabelInfo;->target:Z

    goto :goto_0
.end method
