.class Lcom/fsck/k9/mailstore/LocalStore$10;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalStore;->addPendingCommand(Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalStore;

.field final synthetic val$cv:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalStore;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$10;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$10;->val$cv:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$10;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
        }
    .end annotation

    .prologue
    .line 529
    const-string v0, "pending_commands"

    const-string v1, "command"

    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore$10;->val$cv:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 530
    const/4 v0, 0x0

    return-object v0
.end method
