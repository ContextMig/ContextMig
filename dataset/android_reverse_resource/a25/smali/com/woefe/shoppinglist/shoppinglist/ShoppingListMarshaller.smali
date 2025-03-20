.class public Lcom/woefe/shoppinglist/shoppinglist/ShoppingListMarshaller;
.super Ljava/lang/Object;
.source "ShoppingListMarshaller.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall(Ljava/io/OutputStream;Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;)V
    .locals 4
    .param p0    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 p0, 0x0

    :try_start_0
    const-string v1, "[ "

    .line 33
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v1, " ]\n\n"

    .line 35
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    .line 38
    invoke-virtual {v1}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->getQuantity()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual {v1}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {v1}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "// "

    .line 42
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_0
    if-eqz v3, :cond_1

    .line 46
    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_2

    const-string v1, ""

    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " #"

    .line 50
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_2
    const-string v1, "\n"

    .line 54
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 56
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 32
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_6

    if-eqz p0, :cond_5

    .line 56
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_6
    :goto_2
    throw p1
.end method
