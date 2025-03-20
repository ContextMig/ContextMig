.class Lcom/fsck/k9/provider/EmailProvider$4;
.super Ljava/lang/Object;
.source "EmailProvider.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/provider/EmailProvider;->getAccountStats(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
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
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/provider/EmailProvider;

.field final synthetic val$selectionArgs:[Ljava/lang/String;

.field final synthetic val$sql:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/fsck/k9/provider/EmailProvider;Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/provider/EmailProvider;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/fsck/k9/provider/EmailProvider$4;->this$0:Lcom/fsck/k9/provider/EmailProvider;

    iput-object p2, p0, Lcom/fsck/k9/provider/EmailProvider$4;->val$sql:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/fsck/k9/provider/EmailProvider$4;->val$selectionArgs:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lcom/fsck/k9/provider/EmailProvider$4;->val$sql:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/provider/EmailProvider$4;->val$selectionArgs:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Lcom/fsck/k9/provider/EmailProvider$4;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
