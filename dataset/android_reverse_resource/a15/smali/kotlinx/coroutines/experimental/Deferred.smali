.class public interface abstract Lkotlinx/coroutines/experimental/Deferred;
.super Ljava/lang/Object;
.source "Deferred.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/experimental/Job;"
    }
.end annotation


# virtual methods
.method public abstract await(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
