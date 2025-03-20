.class public Lcom/fsck/k9/controller/MessagingControllerCommands$PendingEmptyTrash;
.super Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
.source "MessagingControllerCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/controller/MessagingControllerCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingEmptyTrash"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;-><init>()V

    return-void
.end method

.method public static create()Lcom/fsck/k9/controller/MessagingControllerCommands$PendingEmptyTrash;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingEmptyTrash;

    invoke-direct {v0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingEmptyTrash;-><init>()V

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
    .line 80
    invoke-virtual {p1, p2}, Lcom/fsck/k9/controller/MessagingController;->processPendingEmptyTrash(Lcom/fsck/k9/Account;)V

    .line 81
    return-void
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "empty_trash"

    return-object v0
.end method
