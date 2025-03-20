.class public final enum Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;
.super Ljava/lang/Enum;
.source "SimpleItemDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum LabelActions:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

.field public static final enum LabelDelete:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

.field public static final enum NoteActions:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

.field public static final enum NoteDelete:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

.field public static final enum NoteInfo:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

.field public static final enum NoteNoLabels:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x40b6dd053df026d0L    # -7.671093372881074E-4

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->$jacocoInit()[Z

    move-result-object v0

    .line 182
    new-instance v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    const-string v2, "NoteActions"

    invoke-direct {v1, v2, v8}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->NoteActions:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    aput-boolean v4, v0, v5

    .line 183
    new-instance v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    const-string v2, "NoteInfo"

    invoke-direct {v1, v2, v4}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->NoteInfo:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    aput-boolean v4, v0, v6

    .line 184
    new-instance v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    const-string v2, "NoteDelete"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->NoteDelete:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    aput-boolean v4, v0, v7

    .line 185
    new-instance v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    const-string v2, "NoteNoLabels"

    invoke-direct {v1, v2, v5}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->NoteNoLabels:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 187
    new-instance v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    const-string v2, "LabelActions"

    invoke-direct {v1, v2, v6}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->LabelActions:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 188
    new-instance v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    const-string v2, "LabelDelete"

    invoke-direct {v1, v2, v7}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->LabelDelete:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    .line 180
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    sget-object v2, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->NoteActions:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->NoteInfo:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->NoteDelete:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    aput-object v3, v1, v2

    sget-object v2, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->NoteNoLabels:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->LabelActions:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->LabelDelete:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    aput-object v2, v1, v7

    sput-object v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->$VALUES:[Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->$jacocoInit()[Z

    move-result-object v0

    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->$jacocoInit()[Z

    move-result-object v1

    .line 180
    const-class v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->$jacocoInit()[Z

    move-result-object v1

    .line 180
    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->$VALUES:[Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    invoke-virtual {v0}, [Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method
