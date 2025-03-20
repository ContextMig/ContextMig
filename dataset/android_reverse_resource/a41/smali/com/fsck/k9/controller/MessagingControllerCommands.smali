.class public Lcom/fsck/k9/controller/MessagingControllerCommands;
.super Ljava/lang/Object;
.source "MessagingControllerCommands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;,
        Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMarkAllAsRead;,
        Lcom/fsck/k9/controller/MessagingControllerCommands$PendingAppend;,
        Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;,
        Lcom/fsck/k9/controller/MessagingControllerCommands$PendingEmptyTrash;,
        Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;,
        Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    }
.end annotation


# static fields
.field static final COMMAND_APPEND:Ljava/lang/String; = "append"

.field static final COMMAND_EMPTY_TRASH:Ljava/lang/String; = "empty_trash"

.field static final COMMAND_EXPUNGE:Ljava/lang/String; = "expunge"

.field static final COMMAND_MARK_ALL_AS_READ:Ljava/lang/String; = "mark_all_as_read"

.field static final COMMAND_MOVE_OR_COPY:Ljava/lang/String; = "move_or_copy"

.field static final COMMAND_SET_FLAG:Ljava/lang/String; = "set_flag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
