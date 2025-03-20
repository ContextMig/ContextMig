.class public Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;
.super Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
.source "MessagingControllerCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/controller/MessagingControllerCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingAppend"
.end annotation


# instance fields
.field public final folder:Ljava/lang/String;

.field public final uid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;->folder:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;->uid:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;
    .locals 1
    .param p0, "folderName"    # Ljava/lang/String;
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;

    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 134
    invoke-virtual {p1, p0, p2}, Lcom/fsck/k9/controller/MessagingController;->processPendingAppend(Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;Lcom/fsck/k9/Account;)V

    .line 135
    return-void
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "append"

    return-object v0
.end method
