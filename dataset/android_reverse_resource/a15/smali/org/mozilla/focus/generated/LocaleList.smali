.class public Lorg/mozilla/focus/generated/LocaleList;
.super Ljava/lang/Object;
.source "LocaleList.java"


# static fields
.field public static final BUNDLED_LOCALES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    const/16 v0, 0x55

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "af"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "am"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "an"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "anp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ar"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ast"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "az"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bg"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bn-BD"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bn-IN"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bs"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ca"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cak"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cs"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "cy"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "dsb"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "el"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "en-CA"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "en-US"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "eo"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "es-AR"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "es-CL"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "es-ES"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "es-MX"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "eu"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "fa"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "fy-NL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "ga-IE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "gu-IN"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "hi-IN"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "hr"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "hsb"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "hy-AM"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "ia"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "in"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "it"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "iw"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "ixl"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "ka"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "kab"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "kk"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "ko"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "kw"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "lo"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "lt"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "meh"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "mix"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "ms"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "my"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "nb-NO"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "ne-NP"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "nn-NO"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "oc"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "pai"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "pt-BR"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "quy"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "ro"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "sk"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "sl"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "sq"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "sr"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "sv-SE"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "ta"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "te"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "th"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "trs"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "tsz"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "tt"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "uk"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "ur"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "vi"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "wo"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "zam"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "zh-CN"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "zh-TW"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/mozilla/focus/generated/LocaleList;->BUNDLED_LOCALES:Ljava/util/List;

    return-void
.end method
