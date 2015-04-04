// Technique derived from Johann Korndörfer's
// excellent talk at NVScene:
// https://www.youtube.com/watch?v=s8nFqwOho-s

float combineSmooth(float d1, float d2, float r) {
  float m = min(d1, d2);

  if (d1 < r && d2 < r) {
    return min(m, r - length(r - vec2(d1, d2)));
  } else {
    return m;
  }
}

#pragma glslify: export(combineSmooth)
