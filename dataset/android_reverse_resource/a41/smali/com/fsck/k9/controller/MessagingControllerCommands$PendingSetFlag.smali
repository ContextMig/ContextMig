.class public Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;
.super Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
.source "MessagingControllerCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/controller/MessagingControllerCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingSetFlag"
.end annotation


# instance fields
.field public final flag:Lcom/fsck/k9/mail/Flag;

.field public final folder:Ljava/lang/String;

.field public final newState:Z

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
.method private constructor <init>(Ljava/lang/String;ZLcom/fsck/k9/mail/Flag;Ljava/util/List;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "newState"    # Z
    .param p3, "flag"    # Lcom/fsck/k9/mail/Flag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/fsck/k9/mail/Flag;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p4, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->folder:Ljava/lang/String;

    .line 97
    iput-boolean p2, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->newState:Z

    .line 98
    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->flag:Lcom/fsck/k9/mail/Flag;

    .line 99
    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->uids:Ljava/util/List;

    .line 100
    return-void
.end method

.method public static create(Ljava/lang/String;ZLcom/fsck/k9/mail/Flag;Ljava/util/List;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;
    .locals 1
    .param p0, "folder"    # Ljava/lang/String;
    .param p1, "newState"    # Z
    .param p2, "flag"    # Lcom/fsck/k9/mail/Flag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/fsck/k9/mail/Flag;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;"
        }
    .end annotation

    .prologue
    .line 92
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;-><init>(Ljava/lang/String;ZLcom/fsck/k9/mail/Flag;Ljava/util/List;)V

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
    .line 109
    invoke-virtual {p1, p0, p2}, Lcom/fsck/k9/controller/MessagingController;->processPendingSetFlag(Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;Lcom/fsck/k9/Account;)V

    .line 110
    return-void
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "set_flag"

    return-object v0
.end method
