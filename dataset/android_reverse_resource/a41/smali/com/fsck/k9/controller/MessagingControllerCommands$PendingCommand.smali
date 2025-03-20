.class public abstract Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
.super Ljava/lang/Object;
.source "MessagingControllerCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/controller/MessagingControllerCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PendingCommand"
.end annotation


# instance fields
.field public databaseId:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract execute(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getCommandName()Ljava/lang/String;
.end method
