.class public final Lio/sentry/jvmti/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/jvmti/Frame$LocalVariable;
    }
.end annotation


# instance fields
.field private final locals:[Lio/sentry/jvmti/Frame$LocalVariable;

.field private method:Ljava/lang/reflect/Method;


# virtual methods
.method public getLocals()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v5, p0, Lio/sentry/jvmti/Frame;->locals:[Lio/sentry/jvmti/Frame$LocalVariable;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lio/sentry/jvmti/Frame;->locals:[Lio/sentry/jvmti/Frame$LocalVariable;

    array-length v5, v5

    if-nez v5, :cond_2

    .line 44
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 54
    :cond_1
    return-object v4

    .line 47
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v4, "localsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/sentry/jvmti/Frame;->locals:[Lio/sentry/jvmti/Frame$LocalVariable;

    .local v0, "arr$":[Lio/sentry/jvmti/Frame$LocalVariable;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 49
    .local v3, "localVariable":Lio/sentry/jvmti/Frame$LocalVariable;
    if-eqz v3, :cond_3

    .line 50
    invoke-virtual {v3}, Lio/sentry/jvmti/Frame$LocalVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lio/sentry/jvmti/Frame$LocalVariable;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lio/sentry/jvmti/Frame;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Frame{, locals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/jvmti/Frame;->locals:[Lio/sentry/jvmti/Frame$LocalVariable;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
