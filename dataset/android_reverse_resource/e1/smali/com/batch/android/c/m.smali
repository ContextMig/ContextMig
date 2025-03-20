.class public final Lcom/batch/android/c/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/c/m$a;
    }
.end annotation


# static fields
.field private static a:Lcom/batch/android/c/m$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/batch/android/c/m$a;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/batch/android/c/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/batch/android/c/m;->a:Lcom/batch/android/c/m$a;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/batch/android/c/n;

    invoke-direct {v0, p0}, Lcom/batch/android/c/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/batch/android/c/m;->a:Lcom/batch/android/c/m$a;

    .line 30
    :cond_0
    sget-object v0, Lcom/batch/android/c/m;->a:Lcom/batch/android/c/m$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/batch/android/c/m;->a:Lcom/batch/android/c/m$a;

    .line 39
    return-void
.end method
