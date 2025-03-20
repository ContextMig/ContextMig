.class public Lorg/mozilla/focus/web/Download;
.super Ljava/lang/Object;
.source "Download.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/mozilla/focus/web/Download;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final contentDisposition:Ljava/lang/String;

.field private final contentLength:J

.field private final destinationDirectory:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lorg/mozilla/focus/web/Download$1;

    invoke-direct {v0}, Lorg/mozilla/focus/web/Download$1;-><init>()V

    sput-object v0, Lorg/mozilla/focus/web/Download;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "contentLength"    # J
    .param p7, "destinationDirectory"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/mozilla/focus/web/Download;->url:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lorg/mozilla/focus/web/Download;->userAgent:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lorg/mozilla/focus/web/Download;->contentDisposition:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lorg/mozilla/focus/web/Download;->mimeType:Ljava/lang/String;

    .line 44
    iput-wide p5, p0, Lorg/mozilla/focus/web/Download;->contentLength:J

    .line 45
    iput-object p7, p0, Lorg/mozilla/focus/web/Download;->destinationDirectory:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/mozilla/focus/web/Download;->contentDisposition:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/mozilla/focus/web/Download;->destinationDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/mozilla/focus/web/Download;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/mozilla/focus/web/Download;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/mozilla/focus/web/Download;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lorg/mozilla/focus/web/Download;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lorg/mozilla/focus/web/Download;->userAgent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lorg/mozilla/focus/web/Download;->contentDisposition:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lorg/mozilla/focus/web/Download;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-wide v0, p0, Lorg/mozilla/focus/web/Download;->contentLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    iget-object v0, p0, Lorg/mozilla/focus/web/Download;->destinationDirectory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return-void
.end method
