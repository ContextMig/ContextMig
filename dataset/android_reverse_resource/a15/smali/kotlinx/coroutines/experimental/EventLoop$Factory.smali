.class public final Lkotlinx/coroutines/experimental/EventLoop$Factory;
.super Ljava/lang/Object;
.source "EventLoop.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/EventLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.kt\nkotlinx/coroutines/experimental/EventLoop$Factory\n*L\n1#1,354:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lkotlinx/coroutines/experimental/EventLoop$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lkotlinx/coroutines/experimental/EventLoop$Factory;

    invoke-direct {v0}, Lkotlinx/coroutines/experimental/EventLoop$Factory;-><init>()V

    sput-object v0, Lkotlinx/coroutines/experimental/EventLoop$Factory;->$$INSTANCE:Lkotlinx/coroutines/experimental/EventLoop$Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
