.class Lkdk/android/simplydo/RestoreActivity$1;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkdk/android/simplydo/RestoreActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkdk/android/simplydo/RestoreActivity;


# direct methods
.method constructor <init>(Lkdk/android/simplydo/RestoreActivity;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lkdk/android/simplydo/RestoreActivity$1;->this$0:Lkdk/android/simplydo/RestoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v0, ".simplydo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
