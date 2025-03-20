.class final Lcom/fsck/k9/provider/DecryptedFileProvider$1;
.super Ljava/lang/Object;
.source "DecryptedFileProvider.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/util/FileFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/provider/DecryptedFileProvider;->getFileFactory(Landroid/content/Context;)Lcom/fsck/k9/mailstore/util/FileFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fsck/k9/provider/DecryptedFileProvider$1;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFile()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v1, p0, Lcom/fsck/k9/provider/DecryptedFileProvider$1;->val$applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fsck/k9/provider/DecryptedFileProvider;->access$000(Landroid/content/Context;)V

    .line 50
    iget-object v1, p0, Lcom/fsck/k9/provider/DecryptedFileProvider$1;->val$applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fsck/k9/provider/DecryptedFileProvider;->access$100(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 51
    .local v0, "decryptedTempDirectory":Ljava/io/File;
    const-string v1, "decrypted-"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method
