.class Lcom/fsck/k9/preferences/StorageEditor$1;
.super Ljava/lang/Object;
.source "StorageEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/preferences/StorageEditor;->commitChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/preferences/StorageEditor;


# direct methods
.method constructor <init>(Lcom/fsck/k9/preferences/StorageEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/preferences/StorageEditor;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/fsck/k9/preferences/StorageEditor$1;->this$0:Lcom/fsck/k9/preferences/StorageEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 57
    iget-object v6, p0, Lcom/fsck/k9/preferences/StorageEditor$1;->this$0:Lcom/fsck/k9/preferences/StorageEditor;

    invoke-static {v6}, Lcom/fsck/k9/preferences/StorageEditor;->access$000(Lcom/fsck/k9/preferences/StorageEditor;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 58
    .local v5, "removeKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/fsck/k9/preferences/StorageEditor$1;->this$0:Lcom/fsck/k9/preferences/StorageEditor;

    invoke-static {v7}, Lcom/fsck/k9/preferences/StorageEditor;->access$100(Lcom/fsck/k9/preferences/StorageEditor;)Lcom/fsck/k9/preferences/Storage;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/fsck/k9/preferences/Storage;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v5    # "removeKey":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v1, "insertables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/fsck/k9/preferences/StorageEditor$1;->this$0:Lcom/fsck/k9/preferences/StorageEditor;

    invoke-static {v6}, Lcom/fsck/k9/preferences/StorageEditor;->access$200(Lcom/fsck/k9/preferences/StorageEditor;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 64
    .local v3, "newValue":Ljava/lang/String;
    iget-object v7, p0, Lcom/fsck/k9/preferences/StorageEditor$1;->this$0:Lcom/fsck/k9/preferences/StorageEditor;

    iget-object v7, v7, Lcom/fsck/k9/preferences/StorageEditor;->snapshot:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 65
    .local v4, "oldValue":Ljava/lang/String;
    iget-object v7, p0, Lcom/fsck/k9/preferences/StorageEditor$1;->this$0:Lcom/fsck/k9/preferences/StorageEditor;

    invoke-static {v7}, Lcom/fsck/k9/preferences/StorageEditor;->access$000(Lcom/fsck/k9/preferences/StorageEditor;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 66
    :cond_2
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 69
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "newValue":Ljava/lang/String;
    .end local v4    # "oldValue":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/fsck/k9/preferences/StorageEditor$1;->this$0:Lcom/fsck/k9/preferences/StorageEditor;

    invoke-static {v6}, Lcom/fsck/k9/preferences/StorageEditor;->access$100(Lcom/fsck/k9/preferences/StorageEditor;)Lcom/fsck/k9/preferences/Storage;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/fsck/k9/preferences/Storage;->put(Ljava/util/Map;)V

    .line 70
    return-void
.end method
