.class public final Lkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key;
.super Ljava/lang/Object;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/CoroutineContext$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/experimental/CoroutineContext$Key",
        "<",
        "Lkotlinx/coroutines/experimental/CoroutineExceptionHandler;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/experimental/CoroutineExceptionHandlerKt\n*L\n1#1,107:1\n104#2,4:108\n*E\n*S KotlinDebug\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key\n*L\n88#1,4:108\n*E\n"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key;

    invoke-direct {v0}, Lkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key;-><init>()V

    sput-object v0, Lkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key;->$$INSTANCE:Lkotlinx/coroutines/experimental/CoroutineExceptionHandler$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
