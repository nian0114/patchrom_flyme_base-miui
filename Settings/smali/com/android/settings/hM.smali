.class Lcom/android/settings/hM;
.super Ljava/lang/Object;
.source "SmsDefaultDialog.java"


# instance fields
.field final Av:Ljava/lang/String;

.field final synthetic Aw:Lcom/android/settings/hL;

.field final icon:Landroid/graphics/drawable/Drawable;

.field final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/hL;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings/hM;->Aw:Lcom/android/settings/hL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p2, p0, Lcom/android/settings/hM;->label:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lcom/android/settings/hM;->icon:Landroid/graphics/drawable/Drawable;

    .line 149
    iput-object p4, p0, Lcom/android/settings/hM;->Av:Ljava/lang/String;

    .line 150
    return-void
.end method
