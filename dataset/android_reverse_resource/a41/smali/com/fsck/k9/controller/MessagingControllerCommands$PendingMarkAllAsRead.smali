.class public Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;
.super Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
.source "MessagingControllerCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/controller/MessagingControllerCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingMarkAllAsRead"
.end annotation


# instance fields
.field public final folder:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;->folder:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;
    .locals 1
    .param p0, "folder"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;

    invoke-direct {v0, p0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;-><init>(Ljava/lang/String;)V

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
    .line 157
    invoke-virtual {p1, p0, p2}, Lcom/fsck/k9/controller/MessagingController;->processPendingMarkAllAsRead(Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;Lcom/fsck/k9/Account;)V

    .line 158
    return-void
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, "mark_all_as_read"

    return-object v0
.end method
