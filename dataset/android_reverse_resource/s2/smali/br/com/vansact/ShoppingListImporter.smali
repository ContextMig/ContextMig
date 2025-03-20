.class public Lbr/com/vansact/ShoppingListImporter;
.super Landroid/app/Activity;
.source "ShoppingListImporter.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansact/ShoppingListImporter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2b57c0e28820b176L    # -6.629158703094624E99

    const-string v2, "br/com/vansact/ShoppingListImporter"

    const/16 v3, 0x1f

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansact/ShoppingListImporter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansact/ShoppingListImporter;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lbr/com/vansact/ShoppingListImporter;->$jacocoInit()[Z

    move-result-object v2

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/4 v0, 0x0

    aput-boolean v6, v2, v6

    .line 32
    invoke-virtual {p0}, Lbr/com/vansact/ShoppingListImporter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    aput-boolean v6, v2, v1

    .line 34
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lbr/com/vansact/ShoppingListImporter;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lbr/com/vansact/ShoppingListImporter;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 35
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    const/4 v4, 0x6

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 36
    invoke-virtual {v3, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .local v0, "doc":Lorg/w3c/dom/Document;
    const/4 v3, 0x7

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 37
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->normalize()V

    const/16 v3, 0x8

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 38
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 47
    const/16 v1, 0x9

    aput-boolean v6, v2, v1

    .line 53
    :goto_1
    :try_start_1
    new-instance v1, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;

    invoke-direct {v1, p0, v0}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;-><init>(Landroid/content/Context;Lorg/w3c/dom/Document;)V

    const/16 v3, 0x12

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 54
    invoke-virtual {v1}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->importXml()V

    const/16 v3, 0x13

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 55
    invoke-virtual {v1}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->wasSucessful()Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v1, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v2, v1
    :try_end_1
    .catch Lorg/w3c/dom/DOMException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_5

    .line 64
    :goto_2
    const/16 v1, 0x17

    aput-boolean v6, v2, v1

    .line 65
    :goto_3
    const/16 v1, 0x1c

    aput-boolean v6, v2, v1

    return-void

    .line 32
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    :cond_0
    invoke-virtual {p0}, Lbr/com/vansact/ShoppingListImporter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    aput-boolean v6, v2, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    const/4 v3, 0x1

    :try_start_2
    aput-boolean v3, v2, v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 39
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v1

    const/16 v3, 0xa

    aput-boolean v6, v2, v3

    .line 40
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 47
    const/16 v1, 0xb

    aput-boolean v6, v2, v1

    goto :goto_1

    .line 41
    :catch_1
    move-exception v1

    const/16 v3, 0xc

    aput-boolean v6, v2, v3

    .line 42
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 47
    const/16 v1, 0xd

    aput-boolean v6, v2, v1

    goto :goto_1

    .line 43
    :catch_2
    move-exception v1

    const/16 v3, 0xe

    aput-boolean v6, v2, v3

    .line 44
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 47
    const/16 v1, 0xf

    aput-boolean v6, v2, v1

    goto :goto_1

    .line 45
    :catch_3
    move-exception v1

    const/16 v3, 0x10

    aput-boolean v6, v2, v3

    .line 46
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/16 v1, 0x11

    const/4 v3, 0x1

    :try_start_3
    aput-boolean v3, v2, v1
    :try_end_3
    .catch Lorg/w3c/dom/DOMException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_1

    .line 60
    :catch_4
    move-exception v1

    const/16 v3, 0x18

    aput-boolean v6, v2, v3

    .line 61
    invoke-virtual {v1}, Lorg/w3c/dom/DOMException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 64
    const/16 v1, 0x19

    aput-boolean v6, v2, v1

    goto :goto_3

    .line 55
    :cond_2
    const/16 v3, 0x15

    const/4 v4, 0x1

    :try_start_4
    aput-boolean v4, v2, v3

    .line 57
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lbr/com/vansact/AddItemShoppingList;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v4, 0x7f05005f

    invoke-virtual {p0, v4}, Lbr/com/vansact/ShoppingListImporter;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lbr/com/vansxmlhandler/ShoppingListXmlImporter;->getImportedShoppingList()Lbr/com/bean/ShoppingList;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/bean/ShoppingList;->getId()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbr/com/vansact/ShoppingListImporter;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x16

    const/4 v3, 0x1

    aput-boolean v3, v2, v1
    :try_end_4
    .catch Lorg/w3c/dom/DOMException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_2

    .line 62
    :catch_5
    move-exception v1

    const/16 v3, 0x1a

    aput-boolean v6, v2, v3

    .line 63
    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x1b

    aput-boolean v6, v2, v1

    goto/16 :goto_3
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansact/ShoppingListImporter;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    const/16 v1, 0x1d

    aput-boolean v2, v0, v1

    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 72
    const/16 v1, 0x1e

    aput-boolean v2, v0, v1

    return-void
.end method
