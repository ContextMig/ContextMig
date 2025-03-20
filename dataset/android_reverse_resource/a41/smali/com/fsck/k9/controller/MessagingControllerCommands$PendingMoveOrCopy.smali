.class public Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;
.super Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
.source "MessagingControllerCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/controller/MessagingControllerCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingMoveOrCopy"
.end annotation


# instance fields
.field public final destFolder:Ljava/lang/String;

.field public final isCopy:Z

.field public final newUidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final srcFolder:Ljava/lang/String;

.field public final uids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/Map;)V
    .locals 0
    .param p1, "srcFolder"    # Ljava/lang/String;
    .param p2, "destFolder"    # Ljava/lang/String;
    .param p3, "isCopy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p4, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "newUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->srcFolder:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->destFolder:Ljava/lang/String;

    .line 52
    iput-boolean p3, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->isCopy:Z

    .line 53
    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->uids:Ljava/util/List;

    .line 54
    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->newUidMap:Ljava/util/Map;

    .line 55
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;
    .locals 6
    .param p0, "srcFolder"    # Ljava/lang/String;
    .param p1, "destFolder"    # Ljava/lang/String;
    .param p2, "isCopy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;"
        }
    .end annotation

    .prologue
    .line 45
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/Map;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;
    .locals 6
    .param p0, "srcFolder"    # Ljava/lang/String;
    .param p1, "destFolder"    # Ljava/lang/String;
    .param p2, "isCopy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, "uidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public execute(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "controller"    # Lcom/fsck/k9/controller/MessagingController;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1, p0, p2}, Lcom/fsck/k9/controller/MessagingController;->processPendingMoveOrCopy(Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;Lcom/fsck/k9/Account;)V

    .line 65
    return-void
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "move_or_copy"

    return-object v0
.end method
