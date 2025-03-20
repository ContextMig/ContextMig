.class public Lcom/woefe/shoppinglist/shoppinglist/ShoppingListUnmarshaller;
.super Ljava/lang/Object;
.source "ShoppingListUnmarshaller.java"


# static fields
.field private static final EMPTY_LINE:Ljava/util/regex/Pattern;

.field private static final HEADER:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\s*$"

    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListUnmarshaller;->EMPTY_LINE:Ljava/util/regex/Pattern;

    const-string v0, "\\[(.*)]"

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListUnmarshaller;->HEADER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createListItem(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ListItem;
    .locals 4

    const-string v0, "//"

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v1, "#"

    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 80
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 81
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 87
    :goto_0
    new-instance v1, Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0, v2}, Lcom/woefe/shoppinglist/shoppinglist/ListItem;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static unmarshal(Ljava/io/InputStream;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/woefe/shoppinglist/shoppinglist/UnmarshallException;
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 45
    sget-object v1, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListUnmarshaller;->HEADER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 47
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 52
    new-instance p0, Lcom/woefe/shoppinglist/shoppinglist/UnmarshallException;

    const-string v0, "Could not find the name of the list"

    invoke-direct {p0, v0}, Lcom/woefe/shoppinglist/shoppinglist/UnmarshallException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_1
    new-instance v1, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    invoke-direct {v1, p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;-><init>(Ljava/lang/String;)V

    .line 58
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 59
    sget-object v2, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListUnmarshaller;->EMPTY_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    .line 60
    invoke-static {p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListUnmarshaller;->createListItem(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ListItem;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;->add(Lcom/woefe/shoppinglist/shoppinglist/ListItem;)Z

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public static unmarshal(Ljava/lang/String;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/woefe/shoppinglist/shoppinglist/UnmarshallException;
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/woefe/shoppinglist/shoppinglist/ShoppingListUnmarshaller;->unmarshal(Ljava/io/InputStream;)Lcom/woefe/shoppinglist/shoppinglist/ShoppingList;

    move-result-object p0

    return-object p0
.end method
