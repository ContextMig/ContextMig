.class final Lorg/jetbrains/anko/ContextHelper;
.super Ljava/lang/Object;
.source "Async.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/jetbrains/anko/ContextHelper;",
        "",
        "()V",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "mainThread",
        "Ljava/lang/Thread;",
        "kotlin.jvm.PlatformType",
        "getMainThread",
        "()Ljava/lang/Thread;",
        "common-compileReleaseKotlin"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/jetbrains/anko/ContextHelper;

.field private static final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final mainThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 201
    new-instance v0, Lorg/jetbrains/anko/ContextHelper;

    invoke-direct {v0}, Lorg/jetbrains/anko/ContextHelper;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    check-cast v0, Lorg/jetbrains/anko/ContextHelper;

    sput-object v0, Lorg/jetbrains/anko/ContextHelper;->INSTANCE:Lorg/jetbrains/anko/ContextHelper;

    .line 202
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/jetbrains/anko/ContextHelper;->handler:Landroid/os/Handler;

    .line 203
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lorg/jetbrains/anko/ContextHelper;->mainThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 202
    sget-object v0, Lorg/jetbrains/anko/ContextHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getMainThread()Ljava/lang/Thread;
    .locals 1

    .line 203
    sget-object v0, Lorg/jetbrains/anko/ContextHelper;->mainThread:Ljava/lang/Thread;

    return-object v0
.end method
