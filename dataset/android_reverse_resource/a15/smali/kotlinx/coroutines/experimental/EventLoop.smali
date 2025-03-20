.class public interface abstract Lkotlinx/coroutines/experimental/EventLoop;
.super Ljava/lang/Object;
.source "EventLoop.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/EventLoop$Factory;
    }
.end annotation


# static fields
.field public static final Factory:Lkotlinx/coroutines/experimental/EventLoop$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/experimental/EventLoop$Factory;->$$INSTANCE:Lkotlinx/coroutines/experimental/EventLoop$Factory;

    sput-object v0, Lkotlinx/coroutines/experimental/EventLoop;->Factory:Lkotlinx/coroutines/experimental/EventLoop$Factory;

    return-void
.end method


# virtual methods
.method public abstract processNextEvent()J
.end method
