.class public final Lrx/exceptions/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# static fields
.field private static final MAX_DEPTH:I = 0x19


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 111
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 113
    .local v2, "seenCauses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    .line 114
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 115
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v3, 0x19

    if-lt v0, v3, :cond_0

    move v0, v1

    .line 134
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :goto_1
    return-void

    .line 119
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 128
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 129
    :catch_0
    move-exception v3

    goto :goto_1

    .line 123
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method public static getFinalCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 147
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    const/16 v2, 0x19

    if-lt v0, v2, :cond_1

    .line 149
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0    # "e":Ljava/lang/Throwable;
    const-string v2, "Stack too deep to get final cause"

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move v0, v1

    .line 153
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-object p0

    .line 151
    .end local v0    # "i":I
    .restart local v1    # "i":I
    .restart local p0    # "e":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method public static propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 51
    check-cast p0, Ljava/lang/RuntimeException;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 52
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .line 53
    check-cast p0, Ljava/lang/Error;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 55
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static throwIfAny(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "exceptions":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Throwable;>;"
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 165
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 166
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 169
    .local v0, "t":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 170
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "t":Ljava/lang/Throwable;
    throw v0

    .line 171
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 172
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "t":Ljava/lang/Throwable;
    throw v0

    .line 174
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 177
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    new-instance v1, Lrx/exceptions/CompositeException;

    invoke-direct {v1, p0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    throw v1

    .line 179
    :cond_3
    return-void
.end method

.method public static throwIfFatal(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    instance-of v0, p0, Lrx/exceptions/OnErrorNotImplementedException;

    if-eqz v0, :cond_0

    .line 81
    check-cast p0, Lrx/exceptions/OnErrorNotImplementedException;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 82
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    instance-of v0, p0, Lrx/exceptions/OnErrorFailedException;

    if-eqz v0, :cond_1

    .line 83
    check-cast p0, Lrx/exceptions/OnErrorFailedException;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 84
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_1
    instance-of v0, p0, Lrx/exceptions/OnCompletedFailedException;

    if-eqz v0, :cond_2

    .line 85
    check-cast p0, Lrx/exceptions/OnCompletedFailedException;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 88
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_2
    instance-of v0, p0, Ljava/lang/StackOverflowError;

    if-eqz v0, :cond_3

    .line 89
    check-cast p0, Ljava/lang/StackOverflowError;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 90
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_3
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-eqz v0, :cond_4

    .line 91
    check-cast p0, Ljava/lang/VirtualMachineError;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 92
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_4
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-eqz v0, :cond_5

    .line 93
    check-cast p0, Ljava/lang/ThreadDeath;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 94
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_5
    instance-of v0, p0, Ljava/lang/LinkageError;

    if-eqz v0, :cond_6

    .line 95
    check-cast p0, Ljava/lang/LinkageError;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 97
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_6
    return-void
.end method

.method public static throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lrx/Observer",
            "<*>;)V"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 203
    .local p1, "o":Lrx/Observer;, "Lrx/Observer<*>;"
    invoke-static {p0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 204
    invoke-interface {p1, p0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 205
    return-void
.end method

.method public static throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lrx/Observer",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 191
    .local p1, "o":Lrx/Observer;, "Lrx/Observer<*>;"
    invoke-static {p0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 192
    invoke-static {p0, p2}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 193
    return-void
.end method

.method public static throwOrReport(Ljava/lang/Throwable;Lrx/SingleSubscriber;)V
    .locals 0
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lrx/SingleSubscriber",
            "<*>;)V"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 216
    .local p1, "subscriber":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<*>;"
    invoke-static {p0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 217
    invoke-virtual {p1, p0}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 218
    return-void
.end method
