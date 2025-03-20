.class public Lb/d/b/p;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lb/d/b/q;

.field private static final b:[Lb/f/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/d/b/q;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    sput-object v0, Lb/d/b/p;->a:Lb/d/b/q;

    const/4 v0, 0x0

    new-array v0, v0, [Lb/f/b;

    sput-object v0, Lb/d/b/p;->b:[Lb/f/b;

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lb/d/b/q;

    invoke-direct {v0}, Lb/d/b/q;-><init>()V

    goto :goto_1
.end method

.method public static a(Ljava/lang/Class;)Lb/f/b;
    .locals 1

    sget-object v0, Lb/d/b/p;->a:Lb/d/b/q;

    invoke-virtual {v0, p0}, Lb/d/b/q;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Lb/f/c;
    .locals 1

    sget-object v0, Lb/d/b/p;->a:Lb/d/b/q;

    invoke-virtual {v0, p0, p1}, Lb/d/b/q;->a(Ljava/lang/Class;Ljava/lang/String;)Lb/f/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lb/d/b/l;)Lb/f/g;
    .locals 1

    sget-object v0, Lb/d/b/p;->a:Lb/d/b/q;

    invoke-virtual {v0, p0}, Lb/d/b/q;->a(Lb/d/b/l;)Lb/f/g;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lb/d/b/n;)Lb/f/i;
    .locals 1

    sget-object v0, Lb/d/b/p;->a:Lb/d/b/q;

    invoke-virtual {v0, p0}, Lb/d/b/q;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    return-object v0
.end method
