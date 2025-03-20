.class final Lb/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/f;

    invoke-direct {v0}, Lb/f;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Lb/f;

    sput-object p0, Lb/f;->a:Lb/f;

    return-void
.end method
