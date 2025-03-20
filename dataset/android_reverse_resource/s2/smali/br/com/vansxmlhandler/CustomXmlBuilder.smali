.class public Lbr/com/vansxmlhandler/CustomXmlBuilder;
.super Ljava/lang/Object;
.source "CustomXmlBuilder.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final CLOSE_WITH_TICK:Ljava/lang/String; = "\'>"

.field private static final COL_CLOSE:Ljava/lang/String; = "</COL>"

.field public static final COL_NODO_NAME:Ljava/lang/String; = "COL"

.field private static final COL_OPEN:Ljava/lang/String; = "<COL NAME=\'"

.field public static final DATA_BASE_NODO_NAME:Ljava/lang/String; = "DATABASE"

.field private static final DB_CLOSE:Ljava/lang/String; = "</DATABASE>"

.field private static final DB_OPEN:Ljava/lang/String; = "<DATABASE NAME=\'"

.field public static final NAME:Ljava/lang/String; = "NAME"

.field private static final OPEN_XML_STANZA:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

.field private static final ROW_CLOSE:Ljava/lang/String; = "</ROW>"

.field public static final ROW_NODO_NAME:Ljava/lang/String; = "ROW"

.field private static final ROW_OPEN:Ljava/lang/String; = "<ROW>"

.field private static final TABLE_CLOSE:Ljava/lang/String; = "</TABLE>"

.field public static final TABLE_NODO_NAME:Ljava/lang/String; = "TABLE"

.field private static final TABLE_OPEN:Ljava/lang/String; = "<TABLE NAME=\'"


# instance fields
.field private final sb:Ljava/lang/StringBuilder;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansxmlhandler/CustomXmlBuilder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x26614a5b18df60e5L    # -5.0751824130884196E123

    const-string v2, "br/com/vansxmlhandler/CustomXmlBuilder"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansxmlhandler/CustomXmlBuilder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansxmlhandler/CustomXmlBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lbr/com/vansxmlhandler/CustomXmlBuilder;->sb:Ljava/lang/StringBuilder;

    .line 39
    aput-boolean v2, v0, v2

    return-void
.end method


# virtual methods
.method addColumn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lbr/com/vansxmlhandler/CustomXmlBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 68
    iget-object v1, p0, Lbr/com/vansxmlhandler/CustomXmlBuilder;->sb:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<COL NAME=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</COL>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method closeRow()V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansxmlhandler/CustomXmlBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    iget-object v1, p0, Lbr/com/vansxmlhandler/CustomXmlBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v2, "</ROW>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method closeTable()V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansxmlhandler/CustomXmlBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    iget-object v1, p0, Lbr/com/vansxmlhandler/CustomXmlBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v2, "</TABLE>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method end()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansxmlhandler/CustomXmlBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    iget-object v1, p0, Lbr/com/vansxmlhandler/CustomXmlBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v2, "</DATABASE>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 48
    iget-object v1, p0, Lbr/com/vansxmlhandler/CustomXmlBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method openRow()V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansxmlhandler/CustomXmlBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    iget-object v1, p0, Lbr/com/vansxmlhandler/CustomXmlBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v2, "<ROW>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method openTable(Ljava/lang/String;)V
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/vansxmlhandler/CustomXmlBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    iget-object v1, p0, Lbr/com/vansxmlhandler/CustomXmlBuilder;->sb:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<TABLE NAME=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method start(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lbr/com/vansxmlhandler/CustomXmlBuilder;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    iget-object v1, p0, Lbr/com/vansxmlhandler/CustomXmlBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 43
    iget-object v1, p0, Lbr/com/vansxmlhandler/CustomXmlBuilder;->sb:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<DATABASE NAME=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return-void
.end method
