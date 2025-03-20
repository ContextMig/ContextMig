.class public Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;
.super Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
.source "MessagingControllerCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/controller/MessagingControllerCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingExpunge"
.end annotation


# instance fields
.field public final folder:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;->folder:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;
    .locals 1
    .param p0, "folderName"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;

    invoke-direct {v0, p0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;-><init>(Ljava/lang/String;)V

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
    .line 180
    invoke-virtual {p1, p0, p2}, Lcom/fsck/k9/controller/MessagingController;->processPendingExpunge(Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;Lcom/fsck/k9/Account;)V

    .line 181
    return-void
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string v0, "expunge"

    return-object v0
.end method
