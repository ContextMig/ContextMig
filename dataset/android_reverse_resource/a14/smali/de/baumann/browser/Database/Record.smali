.class public Lde/baumann/browser/Database/Record;
.super Ljava/lang/Object;
.source "Record.java"


# instance fields
.field private time:J

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lde/baumann/browser/Database/Record;->title:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lde/baumann/browser/Database/Record;->url:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lde/baumann/browser/Database/Record;->time:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lde/baumann/browser/Database/Record;->title:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lde/baumann/browser/Database/Record;->url:Ljava/lang/String;

    .line 37
    iput-wide p3, p0, Lde/baumann/browser/Database/Record;->time:J

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lde/baumann/browser/Database/Record;->time:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lde/baumann/browser/Database/Record;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lde/baumann/browser/Database/Record;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setTime(J)V
    .locals 0

    .line 25
    iput-wide p1, p0, Lde/baumann/browser/Database/Record;->time:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lde/baumann/browser/Database/Record;->title:Ljava/lang/String;

    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lde/baumann/browser/Database/Record;->url:Ljava/lang/String;

    return-void
.end method
