.class Lcom/fsck/k9/mailstore/LocalStore$20;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalStore;->doBatchSetSelection(Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;I)V
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

.field final synthetic val$selection:Ljava/lang/StringBuilder;

.field final synthetic val$selectionArgs:Ljava/util/List;

.field final synthetic val$selectionCallback:Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalStore;

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$20;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$20;->val$selectionCallback:Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;

    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStore$20;->val$selection:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/fsck/k9/mailstore/LocalStore$20;->val$selectionArgs:Ljava/util/List;

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
    .line 1042
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$20;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 1047
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$20;->val$selectionCallback:Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;

    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$20;->val$selection:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$20;->val$selectionArgs:Ljava/util/List;

    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalStore$20;->val$selectionArgs:Ljava/util/List;

    .line 1048
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1047
    invoke-interface {v1, p1, v2, v0}, Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1050
    const/4 v0, 0x0

    return-object v0
.end method
