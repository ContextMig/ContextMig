.class public final Lkotlinx/coroutines/experimental/android/AndroidExceptionPreHandlerKt;
.super Ljava/lang/Object;
.source "AndroidExceptionPreHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidExceptionPreHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidExceptionPreHandler.kt\nkotlinx/coroutines/experimental/android/AndroidExceptionPreHandlerKt\n*L\n1#1,31:1\n*E\n"
.end annotation


# static fields
.field private static final getter:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 9
    nop

    .line 10
    :try_start_0
    const-class v4, Ljava/lang/Thread;

    const-string v5, "getUncaughtExceptionPreHandler"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 11
    .local v1, "it":Ljava/lang/reflect/Method;
    const-string v4, "it"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 10
    :cond_0
    if-eqz v3, :cond_1

    .line 9
    .end local v1    # "it":Ljava/lang/reflect/Method;
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    sput-object v1, Lkotlinx/coroutines/experimental/android/AndroidExceptionPreHandlerKt;->getter:Ljava/lang/reflect/Method;

    return-void

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "it":Ljava/lang/reflect/Method;
    :cond_1
    move-object v1, v2

    .line 10
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Throwable;
    move-object v1, v2

    goto :goto_0
.end method

.method public static final synthetic access$getGetter$p()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lkotlinx/coroutines/experimental/android/AndroidExceptionPreHandlerKt;->getter:Ljava/lang/reflect/Method;

    return-object v0
.end method
