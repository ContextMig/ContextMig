.class public final Lcom/batch/android/c/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/c/q$a;
    }
.end annotation


# static fields
.field private static a:Lcom/batch/android/c/q$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/batch/android/c/q$a;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/batch/android/c/q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/batch/android/c/q;->a:Lcom/batch/android/c/q$a;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/batch/android/c/r;

    invoke-direct {v0, p0}, Lcom/batch/android/c/r;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/batch/android/c/q;->a:Lcom/batch/android/c/q$a;

    .line 33
    :cond_0
    sget-object v0, Lcom/batch/android/c/q;->a:Lcom/batch/android/c/q$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/batch/android/c/q;->a:Lcom/batch/android/c/q$a;

    .line 42
    return-void
.end method
