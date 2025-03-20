.class final enum Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;
.super Ljava/lang/Enum;
.source "Iso2022JpToShiftJisInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Charset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

.field public static final enum ASCII:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

.field public static final enum JISX0201:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

.field public static final enum JISX0208:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    const-string v1, "ASCII"

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;->ASCII:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    new-instance v0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    const-string v1, "JISX0201"

    invoke-direct {v0, v1, v3}, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;->JISX0201:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    new-instance v0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    const-string v1, "JISX0208"

    invoke-direct {v0, v1, v4}, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;->JISX0208:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    sget-object v1, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;->ASCII:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;->JISX0201:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;->JISX0208:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;->$VALUES:[Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    return-object v0
.end method

.method public static values()[Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;->$VALUES:[Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    invoke-virtual {v0}, [Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    return-object v0
.end method
