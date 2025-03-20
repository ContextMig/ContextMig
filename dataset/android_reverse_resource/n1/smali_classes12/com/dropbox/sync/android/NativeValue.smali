.class Lcom/dropbox/sync/android/NativeValue;
.super Ljava/lang/Object;
.source "NativeValue.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 101
    invoke-static {}, Lcom/dropbox/sync/android/NativeLib;->ensureLoaded()V

    .line 102
    return-void
.end method

.method static fillFieldMap([Ljava/lang/String;[JLjava/util/Map;)V
    .locals 10
    .param p0, "names"    # [Ljava/lang/String;
    .param p1, "values"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dropbox/sync/android/DbxValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 80
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;>;>;"
    const/4 v2, 0x0

    .line 81
    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 82
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;>;"
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/dropbox/sync/android/DbxFields;->checkFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, p0, v2

    move v2, v3

    .line 83
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 86
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;>;"
    :cond_0
    const/4 v5, 0x0

    .line 87
    .local v5, "j":I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 88
    .restart local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dropbox/sync/android/DbxValue;

    .line 89
    .local v7, "value":Lcom/dropbox/sync/android/DbxValue;
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .local v6, "j":I
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/dropbox/sync/android/DbxValue;->getNativeValue()J

    move-result-wide v8

    :goto_2
    aput-wide v8, p1, v5

    move v5, v6

    .line 90
    .end local v6    # "j":I
    .restart local v5    # "j":I
    goto :goto_1

    .line 89
    .end local v5    # "j":I
    .restart local v6    # "j":I
    :cond_1
    const-wide/16 v8, 0x0

    goto :goto_2

    .line 91
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/dropbox/sync/android/DbxValue;>;"
    .end local v6    # "j":I
    .end local v7    # "value":Lcom/dropbox/sync/android/DbxValue;
    .restart local v5    # "j":I
    :cond_2
    return-void
.end method

.method static freeNativeValues([J)V
    .locals 6
    .param p0, "values"    # [J

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v4, v0, v1

    .line 95
    .local v4, "value":J
    invoke-static {v4, v5}, Lcom/dropbox/sync/android/NativeValue;->nativeFreeValue(J)J

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v4    # "value":J
    :cond_0
    return-void
.end method

.method static native nativeBlobAtom([B)J
.end method

.method static native nativeBlobValue([B)J
.end method

.method static native nativeBooleanAtom(Z)J
.end method

.method static native nativeBooleanValue(Z)J
.end method

.method static native nativeDoubleAtom(D)J
.end method

.method static native nativeDoubleValue(D)J
.end method

.method static native nativeFreeAtom(J)J
.end method

.method static native nativeFreeValue(J)J
.end method

.method static native nativeIntegerAtom(J)J
.end method

.method static native nativeIntegerValue(J)J
.end method

.method static native nativeListValue([J)J
.end method

.method static native nativeStringAtom(Ljava/lang/String;)J
.end method

.method static native nativeStringValue(Ljava/lang/String;)J
.end method

.method static native nativeTimestampAtom(J)J
.end method

.method static native nativeTimestampValue(J)J
.end method
