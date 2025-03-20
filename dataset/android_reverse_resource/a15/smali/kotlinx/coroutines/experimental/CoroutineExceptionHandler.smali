.class public interface abstract Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;
.super Ljava/lang/Object;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/CoroutineContext$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key;
    }
.end annotation


# static fields
.field public static final Key:Lkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key;->$$INSTANCE:Lkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key;

    sput-object v0, Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key;

    return-void
.end method


# virtual methods
.method public abstract handleException(Lkotlin/coroutines/experimental/CoroutineContext;Ljava/lang/Throwable;)V
.end method
