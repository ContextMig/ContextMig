.class Lcom/dropbox/sync/android/NativeFileSystem$ChooserResultBuilder;
.super Ljava/lang/Object;
.source "NativeFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/NativeFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChooserResultBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/NativeFileSystem;


# direct methods
.method private createResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/dropbox/sync/android/NativeFileSystem$ChooserResult;
    .locals 9
    .param p1, "previewUrl"    # Ljava/lang/String;
    .param p2, "thumbnailUrl"    # Ljava/lang/String;
    .param p3, "iconUrl"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "bytes"    # J

    .prologue
    .line 1110
    new-instance v0, Lcom/dropbox/sync/android/NativeFileSystem$ChooserResult;

    iget-object v1, p0, Lcom/dropbox/sync/android/NativeFileSystem$ChooserResultBuilder;->this$0:Lcom/dropbox/sync/android/NativeFileSystem;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/sync/android/NativeFileSystem$ChooserResult;-><init>(Lcom/dropbox/sync/android/NativeFileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method
