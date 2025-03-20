.class Lcom/fsck/k9/mailstore/LocalFolder$25;
.super Ljava/lang/Object;
.source "LocalFolder.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalFolder;->deleteMessageDataFromDisk(J)V
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
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalFolder;

.field final synthetic val$rootMessagePartId:J


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 2029
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$25;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iput-wide p2, p0, Lcom/fsck/k9/mailstore/LocalFolder$25;->val$rootMessagePartId:J

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
    .line 2029
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$25;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

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
    .line 2032
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$25;->this$0:Lcom/fsck/k9/mailstore/LocalFolder;

    iget-wide v2, p0, Lcom/fsck/k9/mailstore/LocalFolder$25;->val$rootMessagePartId:J

    invoke-static {v0, p1, v2, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->access$2000(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2033
    const/4 v0, 0x0

    return-object v0
.end method
