.class public Lde/baumann/browser/View/GridItem;
.super Ljava/lang/Object;
.source "GridItem.java"


# instance fields
.field private filename:Ljava/lang/String;

.field private ordinal:I

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lde/baumann/browser/View/GridItem;->title:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lde/baumann/browser/View/GridItem;->url:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lde/baumann/browser/View/GridItem;->filename:Ljava/lang/String;

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lde/baumann/browser/View/GridItem;->ordinal:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lde/baumann/browser/View/GridItem;->title:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lde/baumann/browser/View/GridItem;->url:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lde/baumann/browser/View/GridItem;->filename:Ljava/lang/String;

    .line 47
    iput p4, p0, Lde/baumann/browser/View/GridItem;->ordinal:I

    return-void
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lde/baumann/browser/View/GridItem;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdinal()I
    .locals 1

    .line 30
    iget v0, p0, Lde/baumann/browser/View/GridItem;->ordinal:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lde/baumann/browser/View/GridItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lde/baumann/browser/View/GridItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lde/baumann/browser/View/GridItem;->filename:Ljava/lang/String;

    return-void
.end method

.method public setOrdinal(I)V
    .locals 0

    .line 33
    iput p1, p0, Lde/baumann/browser/View/GridItem;->ordinal:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lde/baumann/browser/View/GridItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lde/baumann/browser/View/GridItem;->url:Ljava/lang/String;

    return-void
.end method
