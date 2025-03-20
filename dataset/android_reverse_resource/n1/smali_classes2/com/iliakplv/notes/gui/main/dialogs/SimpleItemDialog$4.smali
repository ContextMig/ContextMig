.class synthetic Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$4;
.super Ljava/lang/Object;
.source "SimpleItemDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$iliakplv$notes$gui$main$dialogs$SimpleItemDialog$DialogType:[I

.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$4;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x146c8a68eb378264L

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$4"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$4;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$4;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->values()[Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$4;->$SwitchMap$com$iliakplv$notes$gui$main$dialogs$SimpleItemDialog$DialogType:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    aput-boolean v2, v0, v1

    sget-object v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$4;->$SwitchMap$com$iliakplv$notes$gui$main$dialogs$SimpleItemDialog$DialogType:[I

    sget-object v2, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->NoteActions:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    aput-boolean v4, v0, v4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$4;->$SwitchMap$com$iliakplv$notes$gui$main$dialogs$SimpleItemDialog$DialogType:[I

    sget-object v2, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->NoteInfo:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    aput-boolean v4, v0, v5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$4;->$SwitchMap$com$iliakplv$notes$gui$main$dialogs$SimpleItemDialog$DialogType:[I

    sget-object v2, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->NoteDelete:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    aput-boolean v4, v0, v6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$4;->$SwitchMap$com$iliakplv$notes$gui$main$dialogs$SimpleItemDialog$DialogType:[I

    sget-object v2, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->NoteNoLabels:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$4;->$SwitchMap$com$iliakplv$notes$gui$main$dialogs$SimpleItemDialog$DialogType:[I

    sget-object v2, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->LabelActions:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->ordinal()I

    move-result v2

    const/4 v3, 0x5

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$4;->$SwitchMap$com$iliakplv$notes$gui$main$dialogs$SimpleItemDialog$DialogType:[I

    sget-object v2, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->LabelDelete:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    invoke-virtual {v2}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->ordinal()I

    move-result v2

    const/4 v3, 0x6

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    :goto_5
    const/16 v1, 0xd

    aput-boolean v4, v0, v1

    return-void

    :catch_0
    move-exception v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    :try_start_6
    aput-boolean v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    :try_start_7
    aput-boolean v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const/4 v1, 0x6

    const/4 v2, 0x1

    :try_start_8
    aput-boolean v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    const/16 v1, 0x8

    const/4 v2, 0x1

    :try_start_9
    aput-boolean v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    const/16 v1, 0xa

    const/4 v2, 0x1

    :try_start_a
    aput-boolean v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_4

    :catch_5
    move-exception v1

    const/16 v1, 0xc

    aput-boolean v4, v0, v1

    goto :goto_5
.end method
