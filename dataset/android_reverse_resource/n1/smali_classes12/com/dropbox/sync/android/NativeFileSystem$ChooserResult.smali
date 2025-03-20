.class Lcom/dropbox/sync/android/NativeFileSystem$ChooserResult;
.super Ljava/lang/Object;
.source "NativeFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/NativeFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChooserResult"
.end annotation


# instance fields
.field public final bytes:J

.field public final iconUrl:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final previewUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/dropbox/sync/android/NativeFileSystem;

.field public final thumbnailUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/sync/android/NativeFileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p2, "previewUrl"    # Ljava/lang/String;
    .param p3, "thumbnailUrl"    # Ljava/lang/String;
    .param p4, "iconUrl"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "bytes"    # J

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/dropbox/sync/android/NativeFileSystem$ChooserResult;->this$0:Lcom/dropbox/sync/android/NativeFileSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1095
    iput-object p2, p0, Lcom/dropbox/sync/android/NativeFileSystem$ChooserResult;->previewUrl:Ljava/lang/String;

    .line 1096
    iput-object p3, p0, Lcom/dropbox/sync/android/NativeFileSystem$ChooserResult;->thumbnailUrl:Ljava/lang/String;

    .line 1097
    iput-object p4, p0, Lcom/dropbox/sync/android/NativeFileSystem$ChooserResult;->iconUrl:Ljava/lang/String;

    .line 1098
    iput-object p5, p0, Lcom/dropbox/sync/android/NativeFileSystem$ChooserResult;->name:Ljava/lang/String;

    .line 1099
    iput-wide p6, p0, Lcom/dropbox/sync/android/NativeFileSystem$ChooserResult;->bytes:J

    .line 1100
    return-void
.end method
