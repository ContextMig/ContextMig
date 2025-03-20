.class public final Lb/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/g;

    invoke-direct {v0}, Lb/g;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Lb/g;

    sput-object p0, Lb/g;->a:Lb/g;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "kotlin.Unit"

    return-object v0
.end method
