.class public final enum Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;
.super Ljava/lang/Enum;
.source "AttachmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/compose/AttachmentPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WaitingAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

.field public static final enum NONE:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

.field public static final enum SAVE:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

.field public static final enum SEND:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 367
    new-instance v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;->NONE:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    .line 368
    new-instance v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    const-string v1, "SEND"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;->SEND:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    .line 369
    new-instance v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    const-string v1, "SAVE"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;->SAVE:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    .line 366
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    sget-object v1, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;->NONE:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;->SEND:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;->SAVE:Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;->$VALUES:[Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 366
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 366
    const-class v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;->$VALUES:[Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    invoke-virtual {v0}, [Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/activity/compose/AttachmentPresenter$WaitingAction;

    return-object v0
.end method
