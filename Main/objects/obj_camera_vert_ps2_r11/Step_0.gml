switch(state)
{
    case 0:
        y = lerp(y,135,0.05);
        break;
    case 1:
        y = lerp(y,432-135,0.05);
        break;
    case 2:
        y = lerp(y,590-135,0.05);
        break;
}